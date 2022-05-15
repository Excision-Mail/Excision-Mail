#!/usr/bin/env python3
"""generate secrets and passwords"""

from base64 import standard_b64encode
from os import urandom
from os.path import exists

import yaml


def gen_secrets():
    """generate secrets and passwords"""
    to_gen = {}
    with open("sample-secrets.yml", "r", encoding="utf-8") as o_id:
        to_gen = yaml.safe_load(o_id)
    curr_data = {}
    if exists("secrets.yml"):
        with open("secrets.yml", "r", encoding="utf-8") as o_id:
            curr_data = yaml.safe_load(o_id)
    if not curr_data:
        curr_data = {}
    for k, secret in to_gen.items():
        if k not in curr_data:
            curr_data[k] = standard_b64encode(urandom(secret)).decode('UTF-8')
    with open("secrets.yml", "w", encoding="utf-8") as o_id:
        yaml.safe_dump(curr_data, o_id)


if __name__ == '__main__':
    gen_secrets()
