Put the oauth2 folder under apache htdocs folder.

First, import access_tokens.sql into your database. Then modify database config in server/lib/OAuth2StoragePdo.php.
visit http://localhost/oauth2/server/addclient.php to add client
then visit http://localhost/oauth2/server/authorize.php?client_id=***&client_secret=***&response_type=code, then the browser will redirect to http://localhost/oauth2/back.php?code=***. Now you get the auth code.

then visit http://localhost/oauth2/server/token.php?grant_type=authorization_code&client_id=***&client_secret=***&redirect_uri=http://http://localhost/oauth2/back.php, you will get a json back, such as: {"access_token":"3d4545c3de2c948de900d655936b1746e0bccfdc","expires_in":3600,"token_type":"bearer","scope":null,"refresh_token":"9bb29206b2e5f1045475089a854a516192094116"}

If you want to use refresh token to update access token ,you can visit http://localhost/oauth2/server/token.php?refresh_token=***&grant_type=refresh_token&client_id=***&cient_secret=***&&redirect_uri=http://http://localhost/oauth2/back.php, you will get a json back, such as:
{"access_token":"42f6ca11df909a84131b95eba87a6a2086de8ea0","expires_in":3600,"token_type":"bearer","scope":null,"refresh_token":"382f7c4508e6e5f7c3831dc165dd0512046f0725"}