# Querying the Banlist


## Getting a Specific Ban

### With API Wrappers

```py
import spamblockersapi
import os
# Assume that you place your API token as a environment variable.
API_KEY = os.get(SPAMBLOCKERS_API_TOKEN)

client = spamblockersapi.Client(API_KEY)
ban = client.queryBanStatus(777000)
```

```js
const SpamBlockersApi = require('@SpamBlockers/API');
// Assume that you place your API token as a environment variable.
const API_TOKEN = process.env.SPAMBLOCKERS_API_TOKEN;

const client = new SpamBlockersApi.Client(API_TOKEN);
let ban = client.queryBanStatus(777000);
```

When request was received from API wrapper, the resulting response will look like:

```py
<BanQuery: id: 777000,
           isBanned: true,
           banned_by: 10395820583,
           reason: 'Created Telegram',
           timestamp: 1579919357>
```

```js
banQuery: {
    id: 777000,
    isBanned: true,
    banned_by: 10395820583,
    reason: 'Created Telegram',
    timestamp: 1579919357,
}
```

### With HTTP Request to API

```sh
# Notes:
## Replace 'api.spamblockers.bot' with the domain of the API server of the instance where your token was generated.
## Replace $id with a real user ID.
curl -X GET https://api.spamblockers.bot/banlist/$id X-SPAMBLOCKERS-APi-TOKEN: $SPAMBLOCKERS_API_TOKEN
```

When an HTTP request was received, the resulting response will like like this:

```json
{
    "ok": true,
    "description": "Successfully found the user from DB",
    "id": 777000,
    "isBanned": true,
    "banned_by": 10395820583,
    "reason": "Created Telegram",
    "timestamp": "1579919357"
}
```

### Parameters

| Name | Type | Description | Required |
| --- | --- | --- | --- |
| `$id` | String or interger | ID of a Telegram user. | true

## Banning a user from API

When a user was banned from the API, it might take a little while for the bot to ban across groups where the bot can ban hammer.

### With API Wrappers

```py
import spamblockersapi
import os
```
