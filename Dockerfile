FROM ghcr.io/flouse/testnet-polyjuice-api:2021-07-11_1504

LABEL Name=godwokendeposit Version=0.0.1

COPY config.json configs/polyman-config.json
RUN yarn install

EXPOSE 6101
CMD ["yarn", "start:testnet"]
