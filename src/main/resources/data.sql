CREATE TABLE IF NOT EXISTS deals (
                                     id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                     type_id BIGINT not null ,
                                     place_id BIGINT not null ,
                                     currency_id BIGINT not null ,
                                     ticker VARCHAR(255) NOT NULL,
                                     order_Number VARCHAR(255) NOT NULL,
                                     deal_Number VARCHAR(255) NOT NULL,
                                     deal_Quantity INTEGER not null,
                                     deal_Price NUMERIC(20, 2) not null,
                                     deal_Total_Cost NUMERIC(20, 2) not null,
                                     deal_Trader VARCHAR(255) NOT NULL,
                                     deal_Commission NUMERIC(20, 2) not null
);

CREATE TABLE IF NOT EXISTS deal_type (
                                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                         type VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS deal_place (
                                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                          deal_Place_Full VARCHAR(255) NOT NULL,
                                          deal_Place_Short VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS currency
(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    currency_Full VARCHAR(255) NOT NULL,
    currency_Short VARCHAR(255) NOT NULL
);

INSERT INTO deal_type (type) values ('Брокерский'), ('Дилерский');
INSERT INTO deal_place (deal_Place_Full, deal_Place_Short) values ('Московская Биржа', 'ММВБ');
INSERT INTO currency (currency_Full, currency_Short) VALUES ('Доллар США','USD');

INSERT INTO deals (type_id, place_id, currency_id, ticker, order_Number, deal_Number, deal_Quantity, deal_Price, deal_Total_Cost, deal_Trader, deal_Commission)
VALUES (1, 1, 1, 'AAPL', 'ORD123', 'DEAL001', 100, 150.50, 15050.00, 'TRDR001', 20.00);

INSERT INTO deals (type_id, place_id, currency_id, ticker, order_Number, deal_Number, deal_Quantity, deal_Price, deal_Total_Cost, deal_Trader, deal_Commission)
VALUES (2, 1, 1, 'GOOGL', 'ORD124', 'DEAL002', 50, 2000.75, 100037.50, 'TRDR002', 30.00);
