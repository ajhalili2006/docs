# Authenticating Yourself

> **Note**: Replace the `$SPAMBLOCKERS_API_TOKEN` variable with your
> own API token generated from the bot.

## How to generate tokens?

### From the bot

An Telegram account and a Telegram client is required to continue.

1. Start an instance of SpamBlockersBot in Telegram, for example, [this one](https://t.me/SpamBlockersBot).
2. Send a `/generate_token` command and wait for the bot to generate your key.
3. You'll received your newly-generated API token that's valid
for a API server and it looks like this:

```txt
API Token Generated
    User ID: 777000
    API Token: randomstringhere
    Admin Permissions Granted: false
    API Endpoint: https://api.spamblockers.bot
    API Docs: https://docs.spamblockers.bot/api-docs
```

4. Keep this token secret. If you accidently shared this token
revoke with`/retire_token` and generate a new one.

### With HTTP Request to API

An instance admin of SpamBlockersBot with his/her own API token must do this.

1. Grab the requested user's ID. This is required for checking permissions
2. In a console, enter the following command. The `generateApiToken` below
will returns `204 No Content`.

```sh
## Replace 'your-api-server-here.tld' to your API server
## that specified by the instance you're using when
## your token was generated.
## Also replace 777000 with the target user's ID.
curl -x POST https://your-api-server-here.tld/token?id=777000&grantApiSudoPermissions=false X-SPAMBLOCKERS-API-TOKEN: $SPAMBLOCKERS_API_TOKEN

## For example in SpamBlockersBot API
curl -x POST https://api.spamblockers.bot/token?id=777000&grantApiSudoPermissions=false X-SPAMBLOCKERS-API-TOKEN: $SPAMBLOCKERS_API_TOKEN
```

3. To get the token for, use the `getUserApiTokens` method by entering the following command.

```sh
## Replace 'your-api-server-here.tld' to your API server
## that specified by the instance you're using when
## your token was generated.
## Also replace 777000 with the target user's ID.
curl -x POST https://your-api-server-here.tld/tokens/777000 X-SPAMBLOCKERS-API-TOKEN: $SPAMBLOCKERS_API_TOKEN

## For example in SpamBlockersBot
curl -x POST https://api.spamblockers.bot/tokens/777000 X-SPAMBLOCKERS-API-TOKEN: $SPAMBLOCKERS_API_TOKEN
```

### From the API wrappers

```python
import spamblockersapi
import os
API_TOKEN = os.get(SPAMBLOCKERS_API_TOKEN)

client = spamblockersapi.Client(API_KEY)
client.generateApiToken(777000)
token = client.getUserApiTokens(777000)
```

```js
const SpamBlockersApi = require('@SpamBlockers/API');
const API_KEY = process.env.SPAMBLOCKERS_API_TOKEN

const client = new SpamBlockersApi.Client(API_KEY);
client.generateApiToken(777000);
let token = client.getUserApiToken(777000);
```

## What the API Expects

The API expects your API token to included in all requests to the server in form
of a header like `X-SPAMBLOCKERS-API-TOKEN: $SPAMBLOCKERS_API_TOKEN`.

If you are contacting the API server manually in a browser, an extension that can
modify headers is required to make it successfully receives the request.
