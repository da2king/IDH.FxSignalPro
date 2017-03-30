﻿CREATE TABLE [dbo].[Signals] (
    [SignalId]                UNIQUEIDENTIFIER NOT NULL,
    [SellerProfileId]         UNIQUEIDENTIFIER NOT NULL,
    [CurrencyPairId]          UNIQUEIDENTIFIER NOT NULL,
    [SupportedSellCurrencyId] UNIQUEIDENTIFIER NOT NULL,
    [TimeFrameId]             UNIQUEIDENTIFIER NOT NULL,
    [ExpectedStartDate]       DATETIME         NOT NULL,
    [ExpectedEndDate]         DATETIME         NOT NULL,
    [StopLoss]                DECIMAL (11, 5)  NOT NULL,
    [EntryPoint]              DECIMAL (11, 5)  NOT NULL,
    [TakeProfit]              DECIMAL (11, 5)  NOT NULL,
    [SellingAmount]           DECIMAL (11, 3)  NOT NULL,
    [PreSaleDescription]      VARCHAR (150)    NOT NULL,
    [PostSaleDescription]     VARCHAR (300)    NOT NULL,
    [IsPublished]             BIT              NOT NULL,
    [Created]                 DATETIME         NOT NULL,
    [Deleted]                 DATETIME         NOT NULL,
    [Modified]                DATETIME         NOT NULL,
    [ModifiedBy]              VARCHAR (100)    NOT NULL,
    CONSTRAINT [PK_Signals] PRIMARY KEY CLUSTERED ([SignalId] ASC),
    CONSTRAINT [FK_Signals_CurrencyPairs] FOREIGN KEY ([CurrencyPairId]) REFERENCES [dbo].[CurrencyPairs] ([CurrencyPairId]),
    CONSTRAINT [FK_Signals_SellerProfiles] FOREIGN KEY ([SellerProfileId]) REFERENCES [dbo].[SellerProfiles] ([SellerProfileId]),
    CONSTRAINT [FK_Signals_SupportedSellingCurrencies] FOREIGN KEY ([SupportedSellCurrencyId]) REFERENCES [dbo].[SupportedSellingCurrencies] ([SupportedSellingCurrencyId]),
    CONSTRAINT [FK_Signals_TimeFrames] FOREIGN KEY ([TimeFrameId]) REFERENCES [dbo].[TimeFrames] ([TimeFrameId])
);

