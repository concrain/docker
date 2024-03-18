oauth2-server and oauth2-client.

The oauth2-server service uses the aaronpederson/oauth2-server image,
which provides a simple OAuth2 server.
We set the CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI environment variables to configure the server.
The oauth2-client service uses the aaronpederson/oauth2-client image,
which provides a simple OAuth2 client.
We set the same CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI environment variables as the oauth2-server service.
We also set the AUTHORIZATION_URI, TOKEN_URI, and SCOPE environment variables to configure the client to communicate with the OAuth2 server.
