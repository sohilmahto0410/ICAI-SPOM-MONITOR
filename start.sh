#!/bin/bash
# Install dependencies and Playwright browser, then run the bot
pip install -r requirements.txt
playwright install chromium --with-deps
python bot.py
