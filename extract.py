import requests
import pandas as pd
import xml.etree.ElementTree as ET

def get_xml(url, file_name):
    r = requests.get(url)
    if r.status_code == 200:
        with open(file_name, "wb") as f:
            f.write(r.content)
        print("XML file downloaded and saved.")
    else:
        print('Failed')

    return None


def xml_to_df(file_name):
    tree = ET.parse(file_name)
    root = tree.getroot()

    records = []
    for child in root:
        records.append(child.attrib)

    df = pd.DataFrame(records)

    return df


def extract(url, file_name):
    get_xml(url, file_name)
    raw_data = xml_to_df(file_name)

    return raw_data