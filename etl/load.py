import pandas as pd
import sqlalchemy as sql

def load(data):
    engine = sql.create_engine('postgresql+psycopg2://postgres:1234@localhost:5432/postgres')
    data.to_sql(name='pharma_materials', con=engine, if_exists='replace', index=False)