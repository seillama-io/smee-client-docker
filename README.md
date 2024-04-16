# Docker image for `smee-client`

Container for `smee-client` top of Red Hat Node.js minimal.

## Usage

Get `smee-client` arguments:
```
$ docker run --rm seillama-io/smee-client

Options:
  -v, --version          output the version number
  -u, --url <url>        URL of the webhook proxy service. Default: https://smee.io/new
  -t, --target <target>  Full URL (including protocol and path) of the target service the events will forwarded to. Default: http://127.0.0.1:PORT/PATH
  -p, --port <n>         Local HTTP server port (default: 3000)
  -P, --path <path>      URL path to post proxied requests to` (default: "/")
  -h, --help             output usage information
```

#### Getting started

1. Go to https://smee.io/new
2. Copy your **Webhook Proxy URL**, e.g. `https://smee.io/HLs8LzZkM4EY9SCg`
3. Run `smee-client` somwhere it can reach your hosted webhook endpoint, with `-u` argument pointing at the **Webhook Proxy URL** and the `-t` argument pointing at your actual webhook endpoint. E.g.

    ```sh
    docker run -d --name smee-client seillama-io/smee-client -u https://smee.io/HLs8LzZkM4EY9SCg -t https://YOUR_WEBHOOK_ENDPOINT:8443/webhook
    ```
 