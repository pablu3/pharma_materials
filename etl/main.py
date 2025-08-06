from extract import *
from transform import *

if __name__ == '__main__':
    leki = extract("https://rejestry.ezdrowie.gov.pl/api/rpl/medicinal-products/pharmaceutical-raw-materials/get-xml",
                   "pharm.xml")
    baza = transform(leki)