FROM alpine:latest

RUN apk add --no-cache tor gettext

RUN mkdir -p /var/lib/tor && chown -R tor:tor /var/lib/tor
RUN touch /etc/tor/torrc && chown tor:tor /etc/tor/torrc

COPY torrc.template /etc/tor/torrc.template
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

USER tor

ENTRYPOINT ["entrypoint.sh"]
