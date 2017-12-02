# v2ray-openshift-all-in-one

**IMPORTANT: This project violates the Services Agreement and Acceptable Use Policy which contains 'Network Proxy' and can be found [here](https://openshift.redhat.com/app/legal/). You should know WHAT YOU ARE DOING and get ready for bearing ALL THE CONSEQUENCES ARISING THEREFROM.**

A v2ray docker image work with nginx which supposes php for openshift v3.

- v2ray work with websocket
- v2ray request proxy_pass by nginx
- suppose php
- custom v2ray settings
- add environment variables to edit optional setting
  - CLIENT_ID (default 00000000-0000-0000-0000-000000000000)
  - CLIENT_ALTERID (default 64)
  - CLIENT_SECURITY (default aes-128-gcm)
- don't need custom domain and ssl certificate
- only cost 1 pods

**USE: deploy this image and add default secure route with port 8080 in openshift**

- path to v2ray: https://your.domain/ws/
- path to websites: /usr/share/nginx/html/
