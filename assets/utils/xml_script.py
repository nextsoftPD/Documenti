import os
import xml.etree.ElementTree as ET

def create_xml_element(path):
  element = ET.Element('directory', name=os.path.basename(path))
  for item in os.listdir(path):
    item_path = os.path.join(path, item)
    if os.path.isdir(item_path):
      if item != 'src':  # Skip 'src' directories
        element.append(create_xml_element(item_path))
    elif item.lower().endswith('.pdf'):
      file_name = os.path.splitext(item)[0]
      file_path = f"https://raw.githubusercontent.com/nextsoftPD/Documenti/main/{os.path.relpath(item_path, start='./')}"
      file_element = ET.Element('file', name=file_name, path=file_path)
      element.append(file_element)
  return element

def create_xml_structure(root_path):
  root_element = create_xml_element(root_path)
  tree = ET.ElementTree(root_element)
  return root_element

directories = ['./Candidatura', './RTB', './PB']
root = ET.Element('fs')

for directory in directories:
  if os.path.exists(directory):
    root_element = create_xml_structure(directory)
    root.append(root_element)

tree = ET.ElementTree(root)

with open('directory_structure.xml', 'wb') as f:
  tree.write(f)
