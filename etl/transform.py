import pandas as pd
import numpy as np

def transform(d):
    df = d.copy()
    df['id'] = d['id'].astype(int)
    df['waznoscPozwolenia'].replace({'Bezterminowe': np.nan}, inplace=True)
    df['waznoscPozwolenia'] = pd.to_datetime(df['waznoscPozwolenia'])

    return df