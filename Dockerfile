FROM xucheng/texlive-full:latest

RUN apk  --no-cache add font-noto font-noto-extra font-noto-cjk font-noto-cjk-extra &&\
  fc-cache -fv

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

ENTRYPOINT ["/root/entrypoint.sh"]
