---
title: SpamBlockers API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - python: Python
  - javascript: NodeJS

includes:
  - permissions
  - banlist
  - tokens
  - misc

search: true
---

# Authenicating to the API endpoint

> To authorize, use this code:

```python

import spamblockers-api

'''Same as how you authenicate your API keys in SpamWatch API.'''
client = spamwatch.Client('API_KEY')
```

```javascript
const SpamBlockers = require('spamblockers-api');

// Same as how you uthenicate your API keys in SpamWatch API.
const client = new SpamBlockers.Client("API_KEY");
```

> Make sure to replace `API_KEY` with your API key generated from the bot by using `/apikey generate`.

The API uses API keys to allow access to the API. You can get a API key in the [official bot, maintained by Andrew Lane (a.k.a. Twit)](https://t.me/SpamBlockersBot).

The API expects the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: Bearer $API_KEY`

<aside class="notice">
You must replace <code>API_KEY</code> with your API key.
</aside>
