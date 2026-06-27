#!/bin/bash
# Install dependencies and Playwright browser, then run the bot
cd "Batch Monitor"

# Install Python deps
pip install -r requirements.txt

# Install Playwright's Chromium browser (one-time, ~150MB)
playwright install chromium --with-deps

# Configure
echo 'TELEGRAM_BOT_TOKEN=your_token_here' > .env
echo 'CHECK_INTERVAL_MINUTES=5' >> .env

# Run!
python bot.py
