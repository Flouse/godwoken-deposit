FROM ghcr.io/flouse/testnet-polyjuice-api:latest

LABEL Name=godwokendeposit Version=0.0.1

COPY config.json configs/polyman-config.json
RUN yarn install

EXPOSE 6101
CMD ["yarn", "start:testnet"]
