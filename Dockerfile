FROM hayd/alpine-deno:1.7.2
WORKDIR /app
USER deno

COPY . .
RUN deno cache --unstable readable.ts

CMD ["run", "--unstable", "--allow-read", "--allow-write", "readable.ts"]
