.open AuctionsDatabase.db

.mode column
.headers on
.output Qa_Highest_Bid.out

SELECT
    AuctionID,
    MAX(Bid) AS Max_Bid
FROM Bids
GROUP BY AuctionID;

.output stdout
