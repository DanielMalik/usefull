import re

input_file = 'text from file'
nr = '\d+[a-z]|\d+|[a-z]|[a-z]\d+'
street = '([\d]+[\s-]*)?[^\d]+(\d+\s*([rR]\.?)?\s)?)'
street_type = '([uap]l\.?\s*)'
street_no = f'({nr}(?=\/({nr}))?)'
suite_no = f'(\s*(lok\.*|m\.*|\/)\s*({nr})'

r = f"({street_type}?{street}?{street_no}{suite_no})?"
for row in input_file.split('\n'):
    row = row.strip()
    rr = r"([uap]l\.?\s*)?" + r"((?:[\d]+[\s-]*)?[^\d]+(?:\d+\s*(?:[rR]\.?)?)?\s)?" + r"(?:([a-z\d]+\/[a-z\d]+)\/([a-z\d]+)|([a-z\d]+)\/([a-z\d]+)|([a-z\d]+))"
    print(row + ": ")
    print(re.match(rr, row, flags=re.IGNORECASE).groups())
