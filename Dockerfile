FROM alpine as builder

RUN apk add --no-cache git build-base gcc libsodium-dev make autoconf \
 && git clone https://github.com/cathugger/mkp224o \
 && cd mkp224o \
 && ./autogen.sh \
 && ./configure \
 && make

FROM alpine
COPY --from=builder /mkp224o/mkp224o /bin/mkp224o
VOLUME /result
CMD sh -c '[ ! -z "$FILTERS" ] && cd /result && exec mkp224o $FILTERS'
