FROM ghcr.io/flouse/testnet-polyjuice-api:2021-07-12_0737

LABEL Name=godwokendeposit Version=0.0.1

COPY config.json configs/polyman-config.json
RUN yarn install

EXPOSE 6101
CMD ["yarn", "ts-node ./src/index"]
