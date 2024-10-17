-- Inserting data from JSON FILE, copied data to insert, but could have also imported;

CREATE TABLE ArtistRecommendations (
    ArtistID VARCHAR(50),
    RecommendedArtists JSON,
	RecommendationCount INT
);
SET @json = '{
  "0DheY5irMjBUeLybbCUEZ2": [],
  "0DlhY15l3wsrnlfGio2bjU": [],
  "0DmRESX2JknGPQyO15yxg7": [],
  "0DmhnbHjm1qw6NCYPeZNgJ": [],
  "0Dn11fWM7vHQ3rinvWEl4E": [],
  "0DotfDlYMGqkbzfBhcA5r6": [],
  "0DqP3bOCiC48L8SM9gK4W8": [],
  "0Drs3maQb99iRglyTuxizI": [],
  "0DsPeAi1gxPPnYjgpiEGSR": [],
  "0DtvnTxgZ9K5YaPS5jdlQW": [],
  "0Du4t8UK1lBD8TnOIa3c17": [],
  "0DuJ5k2ERoAizEdgUzJGTc": [],
  "0DujX6vG6qOz2wVBCQg5Vi": [],
  "0DvBSYDq5ikdlKgp94Yamq": [],
  "0DvvojCMIqsOT1Btiwvq1h": [
    "3Y9UedETQztUmRuB2pYaGR",
    "6ng2L9Pwj7NeXm0vJW8LLr",
    "0QAlsftQZIVyNXDtK7PEt2",
    "32qUUy6h1wKd5jN4vRSF20",
    "7kc7HZFnOwUWd8dL8jypPf",
    "07L8VAxYnAlJwnNEWdTIHI",
    "3A6TC7BhsBm8LktswCdm0X",
    "5FeE1flsA6Vuzi4uCMtpEC",
    "7oJlnzQBZE2SAS1JrQHI3F",
    "4LVKk2qM6bwMYHT3fg5sCN",
    "5wbq8xuXzD2EONQZDhZVoQ",
    "7ofTH0nFjkbKuRTpazOzzV",
    "7e9esbJQ7IVwkxpqjSEFL9",
    "4xirLzVl1nnPPBgUFvFbFh",
    "5N6NpGkfs4tFA4HLjNA7xh",
    "2qxp4iVVSlrFAImfZmPmsP",
    "4hyy9Yw1ZxHW2WndWc92h8",
    "3fF0uc3b2sQ5Gc3R09oWej",
    "2VXQKnUs5dpfG6j7AtrH0b",
    "7vHKCt7yOiBg1Hci7izDLh"
  ],
  "0DxcE03jyjg3wQVHUQKx8C": [],
  "0DxsGcq4ILa7Ss2CmZfipk": [],
  "0DzKNJPHYPMaLDxDVEuznX": [],
  "0DzfuBZVzDryD5ZqKla8EW": [],
  "0DzvgthIK2nmlAPE0A2Uvo": [],
  "0E01IqK2Q0vhDHOrQHRoHv": [],
  "0E0SpAZoIxSSvBefCBLfUB": [],
  "0E0afUR6aObnzDTMvjMEuC": [],
  "0E0eEzoo3nfBf5efmw6S1Q": [],
  "0E0n2GRFDjxWw3NiIAG8O3": [],
  "0E1g9toY6vQ4ANdEWV3H2o": [],
  "0E2KoM6UMbdCUigMup7Mm5": [],
  "0E2f4liezEM9Q9OpIovTXJ": [],
  "0E3abAxpm40VzlkhFxBhUc": [],
  "0E3hfspo8Y6JaVY7hx9Dbw": [],
  "0E65ao0wq06lp4F8sQEsy5": [],
  "0E6Aro4b963h7TPeChGIxO": [],
  "0E6Fm3v7ftnQ9kIqfG5VRz": [],
  "0E6Hp8xNT93q3ydBupYT5z": [],
  "0E6xQFR342J2GVLjQr774K": [],
  "0E7fAP8hg5YsmoqHEuPVN9": [],
  "0E80AIHqkMgmEbcCZiPwwY": [],
  "0E8WJ6ltRtLTRhEQv3iNsT": [],
  "0E8xqvEmMJQNbUMSZGYWh6": [],
  "0E9BbNtN2oExFDtFiVyyqf": [],
  "0E9GBw9Q4QKswEISEnqamz": [],
  "0EAIiKCDPXGtXEflUu8LIh": [],
  "0EBhDCuHoIkatzCoqL3hTD": [],
  "0EDdx2mtOtph1rDexX7kO8": [],
  "6S3nAGEmdt4nhPrtBJ56Ga": [
    "5Tbx1DjctXEQnR9UBJmU9r",
    "6Dxf1ZaJBrpbumiqTTnlIH",
    "05GsKvp0yKuCyWQMsPAAmB",
    "0ipBu57ONv2AW0Pxpc2etO",
    "2N3LtIOsdqHwsSlVFVFxqd",
    "1DAWGgvSJDJwvSy2DHuYM6",
    "4vZduJO8Uukqzx64de5JxV",
    "6mFwMkTXmRlflncPi3huai",
    "1MJMOsdzGMni8FXm40mfEU",
    "6hfVCgKTJbLM6M18e2z7OI",
    "0eVHJVD0Z0vafCivIY2XGJ",
    "7fcUoP9P3QEP2m8jdQWTh9",
    "0IekLXmUEHqD3nEFpwB3kE",
    "3fsCWTIuWIRvEGS7gerSJX",
    "3HOHkhvP9X5NoTqKPUGKT9",
    "5nJzQzrjSNU95UVFHtDQWl",
    "5bA1TGkZ4mXFNfP0BxAsIH",
    "6JCHQXLShHX8EnLKCIYDm8",
    "40MX6ONfpMJwrWdTajaRUf",
    "5BwOOeKayeMZXa5SSaiRxv"
  ],
  "0VLMVnVbJyJ4oyZs2L3Yl2": [
    "6yJIuZFLnlAe47DKobH45J",
    "5QNqh0mFcqoGsdzHGMvT1u",
    "3HDrX2OtSuXLW5dLR85uN3",
    "0Ik0N7B22ry8BvdxvDGnG0",
    "4tkGMeZkhOXyk4U9RzvP14",
    "0zMJmvs0RriumGJSAiduOw",
    "5miZb7rLRNlv5NF8meLgOk",
    "0muEwnW8BH3RXdGnQyxEyo",
    "4sBmoMtQBJXQMIxYwuLR5I",
    "0dt23bs4w8zx154C5xdVyl",
    "5qr3WvyioJJApp99FFfqob",
    "2xLXLQHK0IWHZs2QtZmPYG",
    "5Jom56fA36Ebl5YjdVc1EM",
    "5YpG4yABnjezWZ4ugXZoMP",
    "1iQSfAaT7W2KQzAq37HRpf",
    "5DmGsfNDvTcoJA7SR092aR",
    "0pGhoB99qpEJEsBQxgaskQ",
    "4HYb8tOV3neg8JMklbQIaW",
    "0OSGasYpFS2fqrVaFNfJic",
    "0Nemf4TBQz130rW50aV844"
  ],
  "0dt23bs4w8zx154C5xdVyl": [
    "6yJIuZFLnlAe47DKobH45J",
    "0Ik0N7B22ry8BvdxvDGnG0",
    "7mCB2ez7kzv32Yuds8ltlL",
    "5YpG4yABnjezWZ4ugXZoMP",
    "3HDrX2OtSuXLW5dLR85uN3",
    "5DmGsfNDvTcoJA7SR092aR",
    "4sBmoMtQBJXQMIxYwuLR5I",
    "0pGhoB99qpEJEsBQxgaskQ",
    "5qr3WvyioJJApp99FFfqob",
    "0muEwnW8BH3RXdGnQyxEyo",
    "4tkGMeZkhOXyk4U9RzvP14",
    "0zMJmvs0RriumGJSAiduOw",
    "3gLOOsBrd2RJnDDXXLVgQv",
    "5EFuj9hXUCd4Gqs1vR8oUI",
    "2xLXLQHK0IWHZs2QtZmPYG",
    "0VLMVnVbJyJ4oyZs2L3Yl2",
    "5QNqh0mFcqoGsdzHGMvT1u",
    "1iQSfAaT7W2KQzAq37HRpf",
    "0OSGasYpFS2fqrVaFNfJic",
    "5miZb7rLRNlv5NF8meLgOk"
  ],
  "0pGhoB99qpEJEsBQxgaskQ": [
    "5YpG4yABnjezWZ4ugXZoMP",
    "5qr3WvyioJJApp99FFfqob",
    "0zMJmvs0RriumGJSAiduOw",
    "0Ik0N7B22ry8BvdxvDGnG0",
    "4sBmoMtQBJXQMIxYwuLR5I",
    "5DmGsfNDvTcoJA7SR092aR",
    "0dt23bs4w8zx154C5xdVyl",
    "4tkGMeZkhOXyk4U9RzvP14",
    "6yJIuZFLnlAe47DKobH45J",
    "0muEwnW8BH3RXdGnQyxEyo",
    "2xLXLQHK0IWHZs2QtZmPYG",
    "5miZb7rLRNlv5NF8meLgOk",
    "0kUOWn0L2EWAbaBTVfeYtc",
    "1iQSfAaT7W2KQzAq37HRpf",
    "7mCB2ez7kzv32Yuds8ltlL",
    "0VLMVnVbJyJ4oyZs2L3Yl2",
    "3HDrX2OtSuXLW5dLR85uN3",
    "3gLOOsBrd2RJnDDXXLVgQv",
    "0OSGasYpFS2fqrVaFNfJic",
    "0Nemf4TBQz130rW50aV844"
  ],
  "3HDrX2OtSuXLW5dLR85uN3": [
    "6yJIuZFLnlAe47DKobH45J",
    "5QNqh0mFcqoGsdzHGMvT1u",
    "0Ik0N7B22ry8BvdxvDGnG0",
    "0VLMVnVbJyJ4oyZs2L3Yl2",
    "0muEwnW8BH3RXdGnQyxEyo",
    "0zMJmvs0RriumGJSAiduOw",
    "4tkGMeZkhOXyk4U9RzvP14",
    "5miZb7rLRNlv5NF8meLgOk",
    "0dt23bs4w8zx154C5xdVyl",
    "1iQSfAaT7W2KQzAq37HRpf",
    "7mCB2ez7kzv32Yuds8ltlL",
    "5Jom56fA36Ebl5YjdVc1EM",
    "5qr3WvyioJJApp99FFfqob",
    "4sBmoMtQBJXQMIxYwuLR5I",
    "0OSGasYpFS2fqrVaFNfJic",
    "2xLXLQHK0IWHZs2QtZmPYG",
    "5DmGsfNDvTcoJA7SR092aR",
    "0Nemf4TBQz130rW50aV844",
    "4HYb8tOV3neg8JMklbQIaW",
    "6mWHYvSU9NCy2hTlDhfRfJ"
  ],
  "0CLwCkyQAQh3aaIVcDDOka": [],
  "0CMj2r0cVxhFyJ7JKJjeuA": [],
  "0CPJ0OH0nNPyutuSDYxCjJ": [],
  "0CQOV1r9SODIMxUKfBWN7r": [],
  "0CQnm2S7xXkfKAZBnQ3AuX": [],
  "0CYb1GLJyCd9YsDy1CyLaJ": [],
  "0Cat0Vcsy8IvLMHQYFpXmB": [],
  "0CcJoVb594zyyzV1gV6glB": [],
  "0AZanUIYLgaLUv6JPKrOk3": [],
  "0FlEKY0DAdwVppVT51oeLk": [],
  "0FlIz3WjAXTExCeWD4A14G": [],
  "0FlUvcVD3WSjL1cCx0Dp8E": [],
  "0FmAcFoHbWoOIiJT8banyr": [],
  "0Fmrf9QtehWo5XivMENtQ9": [],
  "0Fn4AAkdzNJ8d6GXf3H92N": [],
  "0FnMqa1dpreetgg2fRhgbY": [],
  "0FnegoCz1hBUwxIJ5eY7T1": [],
  "0FoCXmWSoIGHTWynzInGgB": [],
  "0FoIW5oXgJqe2qZv4bWHE2": [],
  "0FpAizL4ViVWwwxguaW7jK": [],
  "0FqXFytrDEQneVZ66qKTQf": [],
  "0FqzpHdzqDtTf69aBEQgi7": [],
  "0Fr9aue7RrkljEiistJoxw": [],
  "0FrKXkadGI9XIYtHWjsg42": [],
  "0FrUyJMAY6I3W0OQQBjDcQ": [],
  "0FriSDHrgYxYDM9Fwpxgx9": [],
  "0FrzYPJCeWvJQasKGo1Njh": [],
  "0FsR85VYCi3F5W6gZmS3R2": [],
  "0Fso98ZlRTCBtkDomWdLdU": [],
  "0Ft8borU3EjHQnJdOI6UnD": [],
  "0FtbOQA0alUQSKQPEN7eIF": [],
  "0FtcQko2Wq1Wz2ByA2hzly": [],
  "0FuOtcekzQPV88pvwoWdrv": [],
  "0FuWWsAZFQbQfUFhONI6pu": [],
  "0FubKw8QsNSjeGd6XZ55rx": [],
  "0FuodMZtQAg59EcfcGsxDB": [],
  "0FvnGcM4CRonJDq4vFmXbI": [],
  "0FvsVWobzdZkG4DdovqSKd": [],
  "0Fw4jGXXHGWmSVGNatwqVZ": [],
  "0FwQCDim58OUiXj9jcfsPm": [],
  "0FwRZNm6qVL1Lbq2dmWIqP": [],
  "0FwT5eGbftBUVsWAVLqf5p": [],
  "0FwfQahyfRMBfwS35GdXwL": [],
  "0FwpYhP41wVFvqUIzufbzY": [],
  "0FwyyQGLxYxavQyVUrBCYu": [],
  "0FxgbHEKHPV4NUyXcr4uUj": [],
  "0FxhAfvCH5BCMAda7fH0W8": [],
  "0KqbCJ52M2IeX9MZOQYFXi": [],
  "0Kr1sWSwNTv46gdNH1udlL": [],
  "0Kr4BIMlQVjRalTBKbJQ6u": [],
  "0Kr56HcJFhJLcAaLWwxOUM": [],
  "0B1Yk8Wm3duNXMsUns1r7a": [],
  "0B1xlavPmlfLaytmmxjX81": [],
  "0B2Hbk3PbHwWG987SX5pGY": [],
  "0B2SazkeE2aELoTYdrP0TT": [],
  "0B2egobfEz4vuhXtGARf6U": [],
  "0B2jd6uGKVNIpowxnHH4rX": [],
  "0B2z8yGCFIgtSZqRLfa98d": [],
  "0B3KhPH71OuJsEUYH5M3ah": [],
  "0B3KnObNDWKSz47DAGiMif": [],
  "0B3NE8MZszXGozdifpSq99": [],
  "0B3OaTKxteuyxtESPeiYIf": [],
  "0B3TF8qPj1HJW652JwwXta": [],
  "0B3b39Vu0cR5cEOLe2IOte": [],
  "0B3mPaK7YDs7YfAoaqbCin": [],
  "0B3qKcTJ3I9cvqQJAKl4Xn": [],
  "0B3qxQlp9muHNlIf5GwuUR": [],
  "0B3z2HkBKAYbJ02MGmy7dF": [],
  "0B41ufpdRfR8aSUrED52GD": [],
  "0B43vUzpw7rJIQf10T6o6r": [],
  "0B47rVVWS4gZSQqG5XYs1P": [],
  "0B485sWC9NXT6dyoXE0Fh8": [],
  "0B4BFze8UUPA1e0JdnT3Nq": [],
  "0B4CfoGghSLfOoUN9724y5": [],
  "0B4ECAcylVGW0z5lYNKH0m": [],
  "0B4gli5I5cw6gVHfm43osg": [],
  "0B4hGc7tk3RUvTYaIyrsa2": [],
  "0B4kGQALwjlFZOs36PVSxT": [],
  "0B4lsxG1vDuDwYLo93kJ1D": [],
  "0B4rYUMYtZqEPhBjpcrPpC": [],
  "0B4w8JnSwntietSAmGY1pr": [],
  "0B4xWSHnbQHh34qbQpHKag": [],
  "0B4xkzXZumgmbomaSPPiB6": [],
  "0B532ckP7k6dxUMDXQ5RtR": [],
  "0B5FKB96h6CZ7PAx5w3hpO": [],
  "0EunAJmKXLqZlvxhYDgP93": [],
  "5bKSpGcoMqXQThrsuRGgdl": [],
  "22mLrN5fkppmuUPsHx6i2G": [
    "3NhV0B71sAoZu1FGHG4bK4",
    "04jItOTRWnT2GWXLjCEWjP",
    "52rqtO4q5VcEEnvxP9wvrr",
    "3nt4PBXVgQyj0KQHeE7tR4",
    "23OtctXQsEX9vMDXWsbkOH",
    "4F7cB7zy5Zlp7BD4JkHBk8",
    "49D1IR6pSVdJMjbPxbFOdM",
    "7LxqmaZTAxTX9j1TYe07rn",
    "0LicvqvKwgCksrsaeRLAQN",
    "0h0b1slt8v7G6DAzjgxJyJ",
    "4U8OxAMZBtpHRN33jsPCdV",
    "2CFJk1tDZZ10C0llah9t39",
    "5GrhvTmk0yoCSmQgDKk4CR",
    "0FarJBdq0gWtF4WtodW4Ap",
    "2VIYBMyLqKkAKUdnguo32b",
    "1EelcDEygYtkxrPAAK1vG0",
    "7a3J8oxUOew9L2XQwCkxnf",
    "4QVLmwlWR5c7rEMgSA1mYd",
    "6xGtDuCCk4xzeKEM6jxuJx",
    "4loSUBD9j7WHcVK9BATQGJ"
  ],
  "7DLDYPMRJ0NFPcBTlg04DE": [],
  "1OCPhFtvkZDLUJJkrJfD2G": [
    "1Ml4OuStDoympbREURAM15",
    "6Gsao94MioGNcDLFGFAlw7",
    "1ZjqNlz7zvDQs44r6l9M3j",
    "6oXkzBf6bMupenvf4tKtmN",
    "0uQXiLK3wKmucUs9fAKx4I",
    "5H2SmWlJAuebbHm6gzVq80",
    "6qcybypxBn4XlMcYJHhViw",
    "6E8uXyNsUKeGOgRqAOcgBa",
    "3stlWzoChlEtbdZAz6CNC3",
    "60JUOTnRuDTetm7Hiwonev",
    "7rpf45DdbpweG51Acze45i",
    "4oXaAEofJFedGweFqy5qiv",
    "0qGFARKf4pfodYjZbj5N4v",
    "5ZGDxHhju6eE8ja4IyGe87",
    "73xrrv4ZrlpLi1q0Q34wiK",
    "0V05eHcONaDJC1HumT0img",
    "1Ug1gaXH8V5vrIHNyOTXrh",
    "3BiJGZsyX9sJchTqcSA7Su",
    "2NbPfkf3TYSRoJ64inF0AN",
    "2mPL4g4v9DS55zi6QctLbP"
  ],
  "4PiJnql6Z3yQ1okaLjPHpD": [
    "4OCeHEXflasM9FzPyZCb3K",
    "2gHf3hZx3Mihg2QqjOOAzu",
    "44nKzXJriXTWzrK1UVAybK",
    "6YWD31XpCDreL58n8R8JRm",
    "0gvNzwhQ3HjbjYk0q4x4wM",
    "1jYzw8FeJ0nLL5EbVKcgy1",
    "1FzFWjJ8mZ8T5MkieI5iqa",
    "3RwqwWXL90ouxT3LoPlinw",
    "3PaGoeMZZCjWWF1l1g6g4n",
    "3UFN5wfEHS28Hxgp8xsBbn",
    "6dPCvOHVicRvLl7eFYFULB",
    "1mO4pzEojL8iYqikMWsLEJ",
    "6eNcMRdnSlq388y4iL2VIU",
    "7fBkOe4oF58Pot01KmtULR",
    "0FN2vE6OGrFk4KsV9JC5IV",
    "7JZ5d3Y8eptxdLlojlWmgY",
    "1iXrDoCTfkeCK4QEp2La6U",
    "3iXAF0svdzF5DYb00gwCkG",
    "1SOYP8EtJntGsM6ViQAiaL",
    "3wytwlzMQDno1rB4UouMDg"
  ],
  "7eXSIjGrfSvF1xDDIJwBxC": [],
  "1OsJZxSshQD4BCg1VtwxsN": [
    "1lNeV1qtmxOGGgXN6B7cWH",
    "1V2CUDxo3SJnjtx6DsThg4",
    "0DX4vAO3I8ObqHKrw72E7f",
    "5b9OcWY9OSX31iaoUaQFyn",
    "0K6ufQj8JzIZPPkvZrEwJS",
    "7iCt7S7BwQ55B50UWpFuS8",
    "0reEj3pa0lTG2gOkj9BoPb",
    "3nalSUqHvdBGqIOjNqpzv9",
    "3cIWHqPpISC5EEufjJQ5Yh",
    "3rwr89g0JzQsjz9XNZog2E",
    "4E4J9xRzeExDw9AnGqOXqN",
    "6wuudWq7XpVutoFp4bsVDo",
    "5ReJ3PmNZvUPfeHpqPW6KK",
    "2OSNMmbTJZZ1k7hIUCxlsY",
    "0zlZCydBni2a9pDgdNMoYy",
    "1mlMBjVFn5oeZLAXHIM5no",
    "6hUUtss2kSQ9CEr9UQU0w0",
    "0WzQVwB2fINTjeM8wN3jhE",
    "2uuAaf6yCHYDZDVCdMUlA3",
    "5HRZLLjW8jC4Kqte3nptim"
  ],
  "5JRTWjFYThNR99D7IOEmn0": [
    "79XphVSh30hNS2K5uisYrF",
    "23BiSNXm5UaRFuusoWisYO",
    "4vwjX6wY3JStfrFdnahxaR",
    "7GqzUP7TApb2wPZ7pxlDeN",
    "11vpC3XmFb1LIP2ugl96lZ",
    "2chaLfJbgV7JXLDWyhIU8R",
    "6f0ZL3mEG76EVXcUk8eEXL",
    "7KKscZTeDLz1g0QthWCMQV",
    "5e6Q6t65r3OujvJ1gDRi5o",
    "6c8255uK9vZp7rB1vfcyt5",
    "2kyVgTTriW7eUjvezcTV85",
    "0zdBW3w3XzBuPMUEiarUUw",
    "2ljDHW0zt90SrHDwjVIGXs",
    "00jpyseJZ9ydn4yhiZjt6A",
    "4ThA3BeHNucwqI7wKyKS8h",
    "2RKnompMfdeZsyis6Gs4ce",
    "5ZZuomULtPht0QLx2k0PEt",
    "1SRnT7dLoSxedWTdCoH1lV",
    "6YD144QzOwK6dRoUZtZJvp",
    "3QK4fNtQUGr2PbZYC5lQzH"
  ],
  "1QWmCjjcNmh4kzYX1Q9VFJ": [
    "21c6Re4diaVaIfTXE8VHSB",
    "0HedhxOnsoENSvnu4Sscl1",
    "0XiHiPgU3Ng4p0MrUSzZ1t",
    "7cuf6uT1cTSAeO8KJfu9G1",
    "31Wr2HLqZIfpFGIGuDgEr7",
    "3Onj7CmAGxUxrd8Qz3EpL6",
    "4vr56qAijoy1IvNKu62ZVP",
    "1OhPzCkW47i8gNe4axvdGo",
    "0WfxYVGBDHnF1C989scou2",
    "5EVtwv4VWSzXtu4HZnJPfY",
    "5rdv79DGf79JH2tXA0DRAw",
    "6iJvajtJraVSpHKwdwomnn",
    "1N29K8ZrxuoevbZUdTzyQ0",
    "7I3rRf9KCD2qJZuaesRegQ",
    "2ZacsJU6wcBGnSHy75mYW1",
    "3coe1YW4NG8p4OXT0iiCDn",
    "19gt8bDEOO3SKQnY45VxS7",
    "2YwopcCMqCYbtZmxVXTcNk",
    "7aemtFGVLomYzl7HnqiXGo",
    "6FwYmzRccMbVFZRgB8cf6P"
  ],
  "4sTTEheJxmjwv9TmrHOaPz": [
    "1NyKett1dn0nNoZMNTTShB",
    "0FNGM4tBuvFyljyFx5sR3O",
    "5PFQgN7IYLjLIP0KcD4yzg",
    "4c7tGewhetMv2tpaSLrBrE",
    "3k0DLnbKvweQFLmbeHbcnO",
    "7cIXL5JyiArbs8waV8VORf",
    "66mJfCLG3EHAdsOVR29DD9",
    "0Ood0SOnX0ur46pv6TUEL4",
    "6pO7AfB1mdClQzyVYLmua2",
    "3RuoTD9EsdZV7d7PFQlWPH",
    "354O2XT61k5X8fPlOUvv6D",
    "4VDyrc6J8Q3hyDX8QFu0BN",
    "7Cky42ttadk7opBWW0yi38",
    "2LArKn1GvVEU72wVj4Ls4G",
    "1L3r0CJjQydRNCdw1yHvwW",
    "4PH0SpHiNGspfkbuXsHGFd",
    "7vzy4WPc16JEzq6B3wJweI",
    "6UdXha6uhs5PzrbwLbsMvc",
    "1UUNseJdZHwfIUzoaGUD3l",
    "2Dzn2ANNU5Ft9r3htzo6ZN"
  ],
  "3PJ8OSq1gHjL4CIyn1S2bR": [
    "6ctDj9FHaqmy203dLptK4h",
    "6cOz9TMiL8lfsFoWkxvqKM",
    "3ggFb0YCOrTs2juujB4In3",
    "54sySc5ynnkqxkG2dEMLQe",
    "3NyKwqXJZRKKr3N1GHwDq2",
    "5ri5KmopDkMg2JKrkvtD9z",
    "2uti5VYcw9CSKw9gYx639x",
    "3E97jAjfJGnYdY2ZNQxMsy",
    "7HmW0ENiK2RblSh3CpOAnR",
    "4l8tDkcTwCBeLrQPk5lEU3",
    "6p4aQSzYlLjwqvP5CVi0Ri",
    "1FIws8DXI9Bfv29LBhcRWX",
    "0a4xVWpLoNjWN8NbMqE6tU",
    "5cUazMvxcAPELFif0BGn2t",
    "6Ti8C1FTM9ZV8qwWktWy3w",
    "1i31XKLddtEeOIr0nPcxdj",
    "2HzWKvI04SaehwU6bM9GUn",
    "2SDhYeFc5lsIU4MwcEHc8D",
    "24k7DQG3asoxeOERUfa4JS",
    "1CePnHlc38UfIQovWgyzKP"
  ],
  "07l4IjPHWrdFqxDd68UNIJ": [
    "1NX0pyqbpVojdGSTF4P7eH",
    "0QVwiXnTOspN3hIwAnWBXA",
    "60uBOg6dkCmUjgPU80cRuo",
    "5tcEAmF52YhD5AOViqkrXi",
    "7asndDnZs1Xv9cabg8zyTy",
    "6coOEmIpGVZiLSxsJCvHIo",
    "2ubYajBEbXYCoXs6YUBLZD",
    "39yWN3GfGGCWB5BDvq6hoa",
    "6mcqMFp9BbowTEYf3uzMUp",
    "7fMuncVtnMSI5VW5Kva22R",
    "1AIpg8MAhJpeojzAZ1ne5M",
    "1K4JaQe0NkO2DRQJUXO7ry",
    "5wCCe0ividHoqcBtwgZLzn",
    "0eUW8ZPQ0jjnoTAQz9HtQH",
    "7KLUKenP88WNsnb7MKa70M",
    "2aZ8QbXjfBQR1glWwIQQTc",
    "4zdCODAJOsWFl6I9H7z1bX",
    "30HOYarCiirq0rSFZ8FAY3",
    "0aIOdrjH5s3hJqxmKoAEUg",
    "2dAaUqWf44TmGx6pSX1PX8"
  ],
  "3iJQfxx1txyDedbjCf6wD7": [],
  "3zQdpHMTdJnV4aCzGqCBYK": [
    "61ZXD1o7fJ7DrwLXMzt50Y",
    "1EGCJLdTQxP8UIA4MWr6Nx",
    "78j1lyp6JO4xzjQzsjKji6",
    "5JzWJLctBqdLXO96YxXvT9",
    "1Hf2M5agx5UUq70iTJMB04",
    "3fdDkhBEDruWRwbxaO9jUL",
    "6zu1JcNYULXTVw509cemBy",
    "7DCmQW885aZQY5fhN1C2PD",
    "47rRBKkfnGlmXw8AztRvYf",
    "7159gjWBGZLDBKrhH0gQVB",
    "5tJdqzQYWhaBSWzGVhqGUX",
    "1Ov5afbrVfmmfPx1TAm8DB",
    "2qNu2Ys8ePDMvKwixWNdbS",
    "55eAm6u8p3FNbnOMlL0tfy",
    "7gDiOICKaYVFJugoruVGlS",
    "6zhA5Vu3mPLVuSCf3RVtxH",
    "3f2boapgR4BFR5VaWqCeat",
    "6AjwgAZIBM1QvBEc6tioCz",
    "5Uj3HYkiz1cn32IPHMqhOy",
    "1grC023GSmH0FTqX3Pwxgw"
  ],
  "17OXC3oLAPMOQwqmzcsoxo": [
    "2J13LoHdQUqpmumGRHkg7l",
    "4Ug1lA45bfmGwUx76BWWfW",
    "4sQvLopWlA5PwvaDNfc4O0",
    "6icjDX5Puxk985j91h5xUe",
    "3g8nTTbNFM7Pu7aT6iJaVY",
    "6nI4pcIdf86z6yjC0PesyP",
    "7LwqgxFhTy3V2wwa2h37B7",
    "7cyFH4DijuxJIdbs5QkgMC",
    "0xAHllnAJZX2DlM8z2A0hC",
    "34vrhPShaVozJS4tTRtA8u",
    "7F1556VoxW6M06EOc2AnA5",
    "0GiC21e7l4XAl7IqGflein",
    "3KZEIYKFCpoeJLYHVBo8W6",
    "3D4iqneFpgK4XQJK4t6dsT",
    "5Lp4dWpZlJJj3dhrgoeZYk",
    "6qL6hgjCwgoC8VG7MuY7wn",
    "6CPiQbiF0iVrQfGa4iDjqW",
    "1xRTBMpX8h8nOZ60Gg98gU",
    "60yKIk5WTQfPrkZPcdohVC",
    "5XKuliaOmskgaVt1VQ6ljF"
  ],
  "18A0k2YX3jZYBrKz1h0Fp4": [
    "4KSwB06fotqYJkRxJHeaKb",
    "0TvbxglaY8h3rdUUUewNDH",
    "243JHQ3NNp9Bhz9RnRVdCm",
    "4iVvG04w9XBch3kxXWMuxb",
    "6RTaV5nZWyOxWWHkvDlrV4",
    "3xFDHACooUWcJ6FP4tsCp4",
    "3BNHVGvoGgbicBXGmU9cZ7",
    "6fdduPsH5SyhiyEIttBAtg",
    "0nvVCoiYH184eR8CDXfx3r",
    "43zH1wiBmLE5aVeHzSoFjn",
    "5BJ7GXyi2tVyoKMQM7cSpM",
    "6X3GXU22qFQc0cbevQ03Cm",
    "19CE7CnTAUtThZjMgJ0T6D",
    "0eLU3EgFDZOFgd2Dwalfwo",
    "58EvYFzDGAQOmBpIOxujnj",
    "0upv3byr3DqJF5gYZcntAj",
    "0iPmB3x32r1vp0nL4gsjMo",
    "1EVj0hmXLRcsy2IfaE0gkD",
    "23k3CFjZRUhTStC4V9faPj",
    "4QOjSC4zksJvpYTwEWPwT0"
  ],
  "1pCXaoB8RV6mkcasIuqrsT": [
    "3Xc1E03nQuC6kd01CS8TZP",
    "1wVjFBUBqgcAVHLZOZIhJh",
    "375R61X1k4YWfsuBWaOEmP",
    "2r9aOuoAXe4csWkx8fojLq",
    "19X4ofoCzM24w2qkiWiHrc",
    "5Oy3fe0pdBdCE38G6KT0w8",
    "030Yfji2i54uUiWemyj32Y",
    "7nPebEaJgqsrJCwqlaNv3p",
    "0Frsbmjf23s0qHQ0BcT9g6",
    "4weNylxRaAg7r6VIAh7DIq",
    "1TQ9GpEp8dSBtNfijzya8w",
    "4oqDjmQqqqAQCHoJ0cNwGr",
    "0Sf1XRHZE9RFKkmcKf83Sy",
    "6N6TnOeyY8u0b0YGbB3e4Z",
    "1FOWlxhhnTZsLdSyzWIEMZ",
    "0lgY4LO0KMLJ30ABMzcuzj",
    "5MV69e9ute7J76w7HaOEiT",
    "5noRwCVd8aP9pWZgbyIFEg",
    "514XPT3CBMEERyJoZbEVCf",
    "5C8kymLzxGEAPJ3aNdFciB"
  ],
  "1RRQMvuWQBNWAMVWLIgCLj": [
    "0L3VFn0OQTOY0vCmYQap81",
    "6tNT5rmHV8eKbeQy9dgoCK",
    "4qcZyH9xrHQIsG1O1Q37He",
    "7mR8ZYdNTOvqf8Am5G9vEh",
    "4nWhVwQcI8yupyL6mlYuep",
    "4aAdNPM4y08ORoaqnOvTAG",
    "1MvD2GCaEIbuACJ3NEK5qD",
    "28g9yXeZOtd7yiIOjWxXBo",
    "0qfeH3ftDPqj5ZEgbOdXy0",
    "3a46ZhZi0Oxx2dKM3FWtXn",
    "0YRlMztjV4T7QnEjDe9sgq",
    "0UJ6kxTNirLqUS4mkONBCC",
    "1DKrWyNSSmYykvGoCy7Z9X",
    "6PJRmvCkUyt2zEItEBXiMv",
    "7BJjcJ2qV5L5X18EuIKCl7",
    "1USwCdeivh38nWccSIIwBT",
    "4HyURxoVAZxaACHYQQxQYx",
    "0bpamy1nCVpLHla2t5qfc4",
    "2otyLi9KcAzTAGKG9E2Tbx",
    "7tRgtrJ8k2wfes2Gj21xIK"
  ],
  "7frYUe4C7A42uZqCzD34Y4": [
    "58o8gC55d5XSsI2MlTZ3M5",
    "2MUxB7dxsGn3ytMPyyekmj",
    "1AQswtUT2D149M5GgdyYMv",
    "7balJhYEvDHAshA39peuCr",
    "28kGdf2ant8i73Fab2F7xq",
    "6PdJJhJWHFRtoERTQ8JGq1",
    "2hmIpieYhZEQJDzlWpNMQg",
    "5feglaMip9UFwp3lftViM9",
    "2RJawMqX9ESxws2KMtHyP3",
    "5xeLNyuZaJBjLpyjopm22n",
    "4C19flKmMm12gRxmBJWMCV",
    "4ziCsS6bX7D9e5cuCVRktx",
    "7BcQiaqOonuaKOQAQos74p",
    "0QntOArZgiNHoemAzwJPu5",
    "0Jdq4M5m5WSBRz21wWpKfu",
    "0V6yAyDa5yVBRaDKKnr3Bb",
    "5UJrlyFPFTGTlfepPJvzjv",
    "5uhcvmuj3X2tr8ooCLrUAx",
    "3wsrcGXTRAukQgXrUHJMwC",
    "2zstvC7L2UiHZZo5Nrz9gY"
  ],
  "6acbdy69rtlv8m9EW31MYl": [
    "3hflm7FUsWEKbI0fRnaW20",
    "5N47dnIfPuGH8kIHpf8gZK",
    "1fYVmAFB7sC7eDoF3mJXla",
    "3ZUn6LYxdmmPYQqBhFWI3h",
    "1q2U0RJo12z8YmBfb1RwOt",
    "094nOQ29vLC8FjZ3PhnM2u",
    "1A1IEvjX2MyuMXDDsSW8sD",
    "4ovtyvs7j1jSmwhkBGHqSr",
    "3L4ZO0ZaSe1qeucpQK8tBR",
    "1sSt1DqqqFLkPwfrqafVyn",
    "2s187JqHC9kipPLBLWXubl",
    "1Nuq9WJb01OoR56vu02bhX",
    "1hNaHKp2Za5YdOAG0WnRbc",
    "5wJBdwIAg6nZoCaWbFhc1r",
    "36gl2NBJNRaQakdS4fTKGW",
    "06UqlnocxIJgyyTZwQMAQK",
    "7gEgjd9W1P1iAD9FbubrqC",
    "5RCdjio4ASMQ8CFaSuAl6C",
    "4DWVHNUG04lB1nYDbQmjLm",
    "38XiDu0kK3Z5jdHUDqBzNT"
  ],
  "72578usTM6Cj5qWsi471Nc": [
    "0Xbdgzdm7k9BJ5gUgmAkpy",
    "4oVMLzAqW6qhRpZWt8fNw4",
    "3t4P7aXVor3NxlJPZxLzOQ",
    "2L16nDKTxhFGaDriR2AHTB",
    "4iA6bUhiZyvRKJf4FNVX39",
    "7HCqGPJcQTyGJ2yqntbuyr",
    "1dVygo6tRFXC8CSWURQJq2",
    "0XL6ie7a0NY5FM05b9Rn5L",
    "4W91bbPB2CTSsHwt7eqNl7",
    "66VUlJ41NQs9bRTflM4eGA",
    "0oOet2f43PA68X5RxKobEy",
    "45VcCRQRa6cyT9xkwvL6Uk",
    "0LSPREIgGMZXCuKVel7LVD",
    "1SJOL9HJ08YOn92lFcYf8a",
    "4rJY6amSC7TWtV9oifBnrS",
    "3PjvC3vaZ6wh5FK6PZ4Dd5",
    "2b4BOEtTbGchL0K53fvpgk",
    "6CXEwIaXYfVJ84biCxqc9k",
    "2j9QVMZlqIj4Cb9UISBrXK",
    "0ZnBmsYz6ImvXdfUglJEWA"
  ],
  "4rK6HLvoZhLFUTcUhG9WfC": [],
  "6iv4lysB1yHXoZJ2gfqTdh": [
    "3tPQOjkxO3mrYrrgkTeXgH",
    "4DqSAnlpn10M4pHUFPEt4E",
    "281Vp9LDrWkHMHQzfQHWCt",
    "00sCATpEvwH48ays7PlQFU",
    "4LnYRxNZVCTsDCO2xKjOn8",
    "4FJhE5ToBQGzOGf0D5Xd1C",
    "3cqeO3muWIW5uSmUDNCmyT",
    "37IHSwzDKNSluvUgmWhOKZ",
    "5isfxZ3RSdBlSLn3cSFhnI",
    "3xU8YsNNkmWSPewlB18NUz",
    "1cw8NspBF8JctQm5rpn3pv",
    "19MVxKZZdPj2X0F8pi0OCT",
    "19LIHDDSHBD5NyYHI3gpzB",
    "6hzngLO20cX5IGqT0hVv1G",
    "1JdHoZwkwOmX2Pl2iTwnzc",
    "348LWkWSA8Xuci7eNnhQcX",
    "4W91bbPB2CTSsHwt7eqNl7",
    "2j9QVMZlqIj4Cb9UISBrXK",
    "39fT56OHEL2E98zDKrqBsC",
    "1cfG7UM0OD4O1II1nd15Qo"
  ],
  "7b6Ui7JVaBDEfZB9k6nHL0": [
    "04hYGGSjYtLekuuJXEGrIl",
    "6xlrAAgxcRlgCXnbg2hcFc",
    "72beYOeW2sb2yfcS4JsRvb",
    "2L16nDKTxhFGaDriR2AHTB",
    "0tC995Rfn9k2l7nqgCZsV7",
    "7HCqGPJcQTyGJ2yqntbuyr",
    "5HyacDSdBkCTDOBoX49ayp",
    "1ciT67XXpG2HOVsLQjKdv6",
    "6BWd8VpOoODhMOPks4sI6R",
    "2FPwX3Gh0w4Qr1v3zSTtcT",
    "74OaRjmyh0XyRZsQQQ5l7c",
    "0XL6ie7a0NY5FM05b9Rn5L",
    "7qHsapL39aTQsPhixtzVvy",
    "39fT56OHEL2E98zDKrqBsC",
    "4oVMLzAqW6qhRpZWt8fNw4",
    "4fEkbug6kZzzJ8eYX6Kbbp",
    "41Nu7NgAj9rJxjj7JDuXrV",
    "0lMa3YTHqQnDDTBaxAV7LK",
    "5GnnSrwNCGyfAU4zuIytiS",
    "7suHsCqUEifucqVyWaljgC"
  ],
  "1lNpPgcIPULhVgDxvI7xLs": [
    "1f9zMAEacpAEZO2iG5WQbX",
    "4Mlxc3DHm3Qr5XTaEXHT6f",
    "39F1LgoPxb2sZni8cFwRwj",
    "0QTO0QZDjoyXxRtIgAU4GY",
    "6RAx8RRxoHeJIqD2d0EjOa",
    "6oJ0EC2Q0XM1JxkSIGRpKW",
    "2I4hRNCYkPKJQlkoEZKjYx",
    "450wFwmuEK6ytahAaWlhbX",
    "2a1gS6kQ6ufP9czhUXP9ir",
    "6lK8O3kyFThiTmgowQZGOH",
    "0FtVISUJUZSWPU4LGeovTM",
    "33AlE9XaZmnAtfWFhjNL5e",
    "1ruewEJphCPPAOSjowo9AH",
    "1VZ1TofaV3kj90QJSdg6NG",
    "3WTWOrIS77vY3hkCFqTyIw",
    "0yyaMSLZPLTbtS2ifp0HTq",
    "1GJvGlHRaFGQUDfTecnPBs",
    "3oTemNYpdpL6suMDbWdZkd",
    "7qqEqY1pR6Uj2Z41HNuszd",
    "6bz1xq2afkyVmv1RbGbq78"
  ],
  "0tuUIxmkyJOzUoJO1kdAi4": [],
  "0YdFvpH7MvXv5vBsfGvt7g": [
    "3YvfzMeJm0QPRPENzJLuo6",
    "5OdYe38kK1xXcyhk7sEJcG",
    "52G68i8sf63xjh4f6CccRX",
    "3nX5WkXHUB865WGMIEtlix",
    "7EY1wUxpMPUJR9DgeiFC0q",
    "42Wixprv3RQYct8e3nJO1S",
    "4sfukdQ4FDFAnlOCn97NgQ",
    "2XcG61fFbh0blcnwCxF24w",
    "4b5GgaUZmtFQmLhwVm9txK",
    "75HaNNL8rrOtEJ7ijG1php",
    "4wmQY2r7jWhHdiXyO9wBpf",
    "6JQxEkgTa28xgMXLn10UNe",
    "0pytDMGXcO1OBF2oPmhqfI",
    "7G8jUNhcaie5DslhcoCB9w",
    "3ISXefu1xiXJ6dKNAxTvNc",
    "29qfrj0g9hRlu6A3NmARxE",
    "70Hq0ib33VstUzf5EMlDWR",
    "3YR1VNcG6ld2CHMSkia9Xs",
    "50iJcDFcbhBEc7NoqTHl1Y",
    "2VC5FEXtIKCkwYgNX2paeS"
  ],
  "2m7KAO7EiviB48ITkqTotr": [
    "6hHp3XmKNvf0gUx3qkVnAp",
    "5OlxKOleDIPXV4HFj8UVg4",
    "5hrE6tEOkcfsDhFpZsqCvw",
    "3QSWiXerHlC3jKwrjGtPq8",
    "5NBmvjUxo17q1UTmmuC50L",
    "1v0pPpow6FkpRm0M6jOtxx",
    "2lfxdF1M0a0FAernvS1NrK",
    "6wlvFCXukZG067UcgSt3Lu",
    "6zXZhwxW3rDM525TIkv5Ow",
    "0kNtx8VpZiYw1o6s1vTdMO",
    "150WdBVkEtUG0CsF6cgyRu",
    "1JD8K3ZW3sIqW6rOBqHOL1",
    "3OgaUpmzmx4xLyszJpjWvK",
    "3W6rDpEiOyC5QuEpxyToRX",
    "2Aw7fkYMRdgJw8vEnbnBJ7",
    "54dra9DwxvBSICtFWTftHq",
    "5u7GGogcQKtktNi1Fsl2vi",
    "65piKLTLOHSPqDWQX5otVx",
    "0jXtg92Lcl62LHghsbj6pw",
    "1mV6QOfpHuauB1jELhSPfZ"
  ],
  "4bvGDTEPFnllKiJaEZGuXk": [
    "2AWF4fUAstzXyJd01JTuS3",
    "3mzZ5nf3QScPqc7y9EzJ6X",
    "6i50rQJbETLRREwFn3plcw",
    "6xlrAAgxcRlgCXnbg2hcFc",
    "2qV4ArHDzLVSdX6GWy5R1z",
    "3PpjqSKBer3obW6lDflOBx",
    "2q1LRGJHpFxovU8Tz6OgRn",
    "3tEJo0yjxFfLljtseITzVr",
    "7x7rCZwlkVvRGOQVeDqND8",
    "6vwSAnfnlO6Sy37KubGrLh",
    "3cqeO3muWIW5uSmUDNCmyT",
    "3nQ125TJobosBH446Dsvvv",
    "1ciT67XXpG2HOVsLQjKdv6",
    "7suHsCqUEifucqVyWaljgC",
    "2HrvJh5lOdSH1DLlWCAtJI",
    "3NegWDGp038A3FIi3gSYzl",
    "4hbKHVGQLndhi1Pa7gQNNj",
    "7GmnD2XZleQw8PPzRJV7FY",
    "45m11y8OUyx5EgHiKvEC3c",
    "3JtetEsoytPoOIPGvqUvSR"
  ],
  "6SdRVw4NGUDFrTbWHXaUbH": [],
  "5wJ1H6ud777odtZl5gG507": [
    "6RF8hEdlUKoLPQOHmBbHiM",
    "3TOhzLRYnkkul71yRBxIoM",
    "1sVmXkzX2ukc6QvasrDBES",
    "6jf2eKjiPT6P18RbOSLzf0",
    "3bAFvRjPZrpRz9Ox1sElQa",
    "4f7KfxeHq9BiylGmyXepGt",
    "1UAzmnFgjizIDvtHvnCdEq",
    "6WOdPJmexxFINcKMkP2jMG",
    "1yzgJmZf5CxtFfGfRFm4Si",
    "3dN9MQpjIyNxyeRfz4EDZe",
    "76fuWYgIf3TVIopTs3vaJ6",
    "0T1CMVkqffHlqEk4BcAph1",
    "0E02VcvA5p1ndkLdqWD5JB",
    "09UmIX92EUH9hAK4bxvHx6",
    "7qHsapL39aTQsPhixtzVvy",
    "1cfG7UM0OD4O1II1nd15Qo",
    "5lMNphVhMLvhFmTWiKiLA2",
    "5tJx4B5oBr1LJkkHI8GFYX",
    "6QtJ6BVdj43aDpgjnVp2tY",
    "74OaRjmyh0XyRZsQQQ5l7c"
  ],
  "4qYpTEJThZ8FC8KzyFrSWW": [
    "64oW4P0vsDhlorOxZKQi6a",
    "11b21KVATwG7LgLPiD3a1A",
    "46A6IKsvzRN2Y6QHLkHvmw",
    "5eWt7HdpWwlidAEBcNtqWQ",
    "36gl2NBJNRaQakdS4fTKGW",
    "62s0EsXQNJEwy8fKZ386VU",
    "379IT6Szv0zgnw4xrdu4mu",
    "76qtJqxLY1aXEPHxAJui7y",
    "4wrFUdBKN4RBMtC3ZoLVdw",
    "4Hyl7QROvzELSzMO7OXdjr",
    "2Srxd4jkUb5hcZEJO1SPnW",
    "3KIiecqeFZHnbLK2MeagZd",
    "72Z2AhMKpxZjLNnPMyinUE",
    "0obuUG86gXYcMtRMNKaYKL",
    "6dlzQ6fiPna40trq1Ek6cb",
    "3GCTrzNZwN4H4YnQJzsWrd",
    "5jypR313fdSfpa6y1GMLqZ",
    "5ywjxFhmhHGQBsK3DundNf",
    "4Xj0nxVO4r7PLEaw7LRiBa",
    "0XqLMMiljB30SqHKV9PYsD"
  ],
  "1AavJbrmyu2LqJRUmR05RY": [
    "2ITUpjGArtWEpUdL69D4gx",
    "2ET7upJHDJ6wlNPBDs9CLv",
    "0DZANxtPEh2bnRD6D7lCEU",
    "1DVmKhJWIp6hEp7ewTKiJb",
    "1fBWn0oM4lQjxxae0Rbawy",
    "48vLiUk4YTBbKHdpeIP6jt",
    "0G5m6OVzOTqmac2C5PIDHs",
    "1NxlRTQHEKTaCNLtONXjVG",
    "5TJHhVz4NC5XLuWLhoaqNb",
    "5y0cu99Dti4npLdv3J4L6q",
    "3OyMyQFX6fCUPFp7h5bU1j",
    "4UhXxu5mZziM9bUd6tUeUq",
    "5JoRvqviRCB3B6i4b1vBCl",
    "0eNXvyH16Gbq4IA9Hc4iFD",
    "2AD3YIUjnqyunPx5r1Uz8s",
    "2MxrlF7oDga1FJQ2r0jmnu",
    "0tGFMqet4N37e69qxaFl4F",
    "6NZSayhI7kEctrImiRvSSV",
    "65L4gvNu1jIuzAKUkXfdIu",
    "7EPdYGUFiowqyrkp6psDCp"
  ],
  "4lEAIuvfZ8flvAGsW60HUH": [],
  "2jrGv71f6bOVIdjjlMqLm6": [],
  "61z6JxRffr86Z3eE7wwZzI": [],
  "4jewzLVqdq1ErwLbkbqNoq": [],
  "0IyY5dakn8JaMv8Ws5gpXT": [],
  "0KaPJHsKvNia6fikixXV5q": [],
  "2k7xLhBSDkF9oWJCQQG4Ka": [],
  "7rVV9d6vc4FLT752uRuk71": [
    "7ymamM7CBML9JF47Of8qBp",
    "77YvCBWe0tTLygpgSJsdOH",
    "7dDSQfbUWrNvRqpNP92slb",
    "15ClyGUe5g2vllncIC4tp6",
    "7llcZ59fwsSv4nEx3mgu31",
    "3TUNkjIHkcvEy9oeK2D4hU",
    "4eZg8HhuJeHqjw7g1a02E9",
    "4b1WCDqAVVgxK7KozLkOqc",
    "2F3KtUVtrt2GLjcl6pB4cz",
    "5asJ8jtjk36r5PW5upyJm6",
    "1lDx24tVvy8JVKOVjnlJfv",
    "06qlB4GYIEJsYDEh6yhTuF",
    "63saYE7bTa5Z7qnWGYReLP",
    "5FVBduYaeVBb6JIghza7v6",
    "5Ljk2MIIax91pypZ9Wcgaj",
    "0iisf4MnGLbp7eCd3NK5nE",
    "5VAyiDhBinVfc6RM5RKnLa",
    "3jw2v5ZbSWBinNaECXq8cJ",
    "1IeJ7wOH2CgIca4B1CBikF",
    "6HtEIJH43LAZGQx6iNCqhg"
  ],
  "0n4a5imdLBN24fIrBWoqrv": [
    "4FHrW1ts0EkPM27nmHtxQG",
    "3KovZIDNYgQY8chiNZo2ZF",
    "4HPuFCMUiNcV4f3ew0flbZ",
    "1vcXQE9gZOF9PCAtdtT51L",
    "4MX8TDXjG2zLcfaaYtDMJC",
    "2G7VQ1kVhVfNagytlousgm",
    "4sMPx4jHZiz0t9UgPsCnoF",
    "00xU4wfephkJrjwJPDvfkf",
    "6xcpXFMC1dMuK7ay8TX3o6",
    "1SrWbIDP84JcSDr0oTBAQw",
    "2U5mF0PZqGu6glnz55yY0y",
    "2iB7AJhJmkWkkehY9ccB0j",
    "44ddWVfxC8kq46MqQgIoJf",
    "117XFtbZPnCI1EYKjYZWJc",
    "3PDFGpPl4ienSn5Vwisfrh",
    "30DIeQNV9s1HEXyuCpGF4l",
    "6ogIjp0fsbUxlqy9q2rvrT",
    "588A4Z6QZweMiQKi3CPngv",
    "7tKpXx21KVUOR6vvDs6xtg",
    "0tPvSUZipTqS0xpEijXZ2a"
  ],
  "1A50WG4Xi1IWiaqnUXYdoc": [
    "6r7b5Y6q3CuBgwVF5NmDSb",
    "72PekNwjrVD4vIpnA6Kxy4",
    "22cqOfoALFWpzhK9V3hgzd",
    "7uDTeA3whn6z2NNm5dkSF5",
    "5onJRnzNCch9amHkNIr8Bd",
    "0QATVY5ZWpWIkDANDDXcnq",
    "5TGycVupaB4WmtdWZNC2b3",
    "1ASRVb6tSo0Pdb6yEKZhmx",
    "5ujhLIok2VaiqoRZ0FJ9UV",
    "02ym1Sm1YRkWPLQEJxxwmZ",
    "277q9pVYyBkDhhrXSAjzbN",
    "6ehOjA4MWRhh7RHDxd8d12",
    "0GndXkMMU5IBbhdcvjxIPT",
    "0gn6QcKMo0cMWKbiPGEeVy",
    "7osxlNHu2u6LbktEKe1SuP",
    "2ctMIS3wimPRegHQpAOVaX",
    "1uj5EutAF1zvnbWFhSzQB3",
    "2aRHH8343AXgWeJzxh1Frs",
    "7h1PMdIjUn3sZM2sNz0SD4",
    "0WHbjg8hVel1R9kq5794HX"
  ],
  "1PaOP8AnQ8Le1tm4kIuA0d": [],
  "1doV1JYPVtwxktCps2w8H6": [],
  "50zgSRlFGAha6L1tLNIpZx": [],
  "6MWn9V7F0sGZoDkClzrUDo": [],
  "7t2lAixMNcR1xtXCLSH2Kb": [],
  "08mHDZy0H8LT2Aj5HwBi2G": [],
  "4YIOi9aFNviV1jRQeiNZgO": [
    "39tfnGyyHWw6NeYS77RldF",
    "1VsvlBp2dqKk2g9EVFvxXg",
    "12kjvw4e3gLp6qVHO65n7W",
    "38XiDu0kK3Z5jdHUDqBzNT",
    "6J5O4svAiMxfVAisbPhA5a",
    "6lNEt5LSOQRUFl43OnnHUL",
    "7kK5badbqOjd8WlT2XWMeM",
    "0obuUG86gXYcMtRMNKaYKL",
    "62s0EsXQNJEwy8fKZ386VU",
    "47fErV0VDIx6PmuhtWGTYu",
    "01ukVEa5Q8UkHjqgiFZsIW",
    "3bxZkzk0PLHcetO9o4oxXn",
    "6acbdy69rtlv8m9EW31MYl",
    "6qMGjGD3lmDJtzALZ8uS2z",
    "6QwPmy9hs9alo36XJ5pwsW",
    "4qYpTEJThZ8FC8KzyFrSWW",
    "18wUkq9ZzqAVgDfxnYhLTl",
    "379IT6Szv0zgnw4xrdu4mu",
    "7KiINhQdLAupkwvJ0EelGG",
    "12BjfR9LIzpDecdcMGvu7f"
  ],
  "6NjoujvRrhFcnt9P3U1n0l": [],
  "3akwWGeTOYIfbgLjNoZktj": [
    "0jZCAq7BzJt5FIMSf7Vk2f",
    "65zTJ7GN0oiIJrW8kUCEuU",
    "3NVRePT209iKkzs139xgNi",
    "7HL1LM4ckK5UsCKBIiqRN0",
    "4bIodMMCR1pHuIX0pfuaa7",
    "43JIpqje1Uzyq9xkwtwMm1",
    "6W5nQOFtziBdCqjIp4DwsS",
    "6tkGPqh3n3NreMfJXlpIL4",
    "6x5F5WGQXlngaM7YunBeXx",
    "2LhdqEhSPJmcrpZKllYMIJ",
    "1MAS9cA4q6ruFHuHPKDGGY",
    "320jagxaqu8lEp1dUKcfe2",
    "2EYwDKLmzlnGzHV4ciS5q7",
    "54jSkAoNp5yCTyQ2bRQdzu",
    "7HWIIikbRMgSjeN6gHdp7z",
    "7DJ6ZBiw1vLC8y0azIlJrO",
    "7c0b1Piiu92ylWrdKH4KXe",
    "6CcBDQdd3dbrHO8slzZBYc",
    "5bzvHuhQwFVsXc3pgQtqv9",
    "5paslVXTFY4oTJAvYk4f1L"
  ],
  "0ELuC3BNDALRmyfvSCKMUe": [],
  "0EMOUM5aedmf43v8k4Iscn": [],
  "4gdMJYnopf2nEUcanAwstx": [
    "41Sw7HsskHGbJOJXhLUTEK",
    "4o0mCeiUIVdknPUMhpO0bd",
    "3xZ9z6k4Suc2O8cAiwMt7h",
    "04hYGGSjYtLekuuJXEGrIl",
    "1ciT67XXpG2HOVsLQjKdv6",
    "5lMNphVhMLvhFmTWiKiLA2",
    "7b6Ui7JVaBDEfZB9k6nHL0",
    "6AnOY77z51J14nEUVsFKTy",
    "6xlrAAgxcRlgCXnbg2hcFc",
    "0tC995Rfn9k2l7nqgCZsV7",
    "74OaRjmyh0XyRZsQQQ5l7c",
    "3HUf0l1HSBzHw0F5UhBOpA",
    "39fT56OHEL2E98zDKrqBsC",
    "5FndSs7pNHPzomD3mxiBR5",
    "3qpyErDI4i90q5EGgSRmNK",
    "0BoaYtrYdoKJ4khvk3KRJJ",
    "1VFIeAFbzMVHmvGQtfE6OI",
    "15iD55LPew2DyTQDqoV0F1",
    "3NegWDGp038A3FIi3gSYzl",
    "5bxVbtf4t5k1QPmy0XDvgv"
  ],
  "04POExMWjZF6Swukc3qU5P": [],
  "04QmzBG3uDZhlColnM9zMD": [],
  "1uqeg7CDizhaLOzAAZuIua": [],
  "273uUd9o2PTOauyyk2Svbv": [],
  "301lG1ScOXGVn9EWoUZ4vB": [],
  "3K2zJlW2gvWEasfCd5Xija": [],
  "4BQ7lj6hkAIGutjpVBoKmL": [],
  "50zzW58thQSMnrsuwzlCwC": [],
  "59FlPOf7mOc3hL87EFmDf1": [],
  "6aLeiCZ1deolYaOHBMWxoP": [],
  "3r0NbTTxtCBUyxcIR4prXr": [
    "0TlpoVBa03V0XNXBq7Gjrh",
    "7tiYEpNsb7Jgby6NB6jKfh",
    "05DD2jrwqfXiyDk3wDG8Yb",
    "2EGJbNf0Hva2C2N6hvhMXD",
    "2eFq1Ymf6ppzrdKxt0OpY4",
    "2qCwqpQzlQTlFIIggAQS9l",
    "45GqSja1kI92nc4BKJa9qz",
    "021sXp6RH5MQCCp2hmal6q",
    "3PDFGpPl4ienSn5Vwisfrh",
    "7dxr6AabRWhsfYRyVJlErK",
    "0WleeEe3UurwlNbDGhb5Yz",
    "2o2dvdiHGlvwfvFxhlxSii",
    "3lFMRWaEWZlfXdBig97kks",
    "71hhKLR9oCOsHLdRIoQ5OU",
    "0HQ9JKydtWxI27eTJZZclh",
    "00xU4wfephkJrjwJPDvfkf",
    "1NIQyQhhLxI07lSrY00HVB",
    "2iB7AJhJmkWkkehY9ccB0j",
    "4SQMBvQigFlMhmZit2xgcp",
    "0xyijUZwKlIH8yjj0OuDf6"
  ],
  "25A5LqeSK0yH4ks5fGxbI2": [],
  "6xNUn9epduXbZmCgsxutSx": [],
  "0gPYmulHN3cgyEcyHqs8ba": [],
  "3EmxfPhGOU6gqMpJJesxCz": [],
  "3ZRQIGHJBTcazpAR08Ewx8": [],
  "3Zo0v9oP1wANLZFC6L7GwJ": [],
  "0dmerIRsQbjUtYkXgvYo6V": [],
  "0odOKN3NjlNxypmdALlHE8": [],
  "0xuBublHjYVqDWg1gnyfi5": [],
  "0y1o7uM0ES2vWXs7uwcHaI": [],
  "13jtsTg2mY8uIrAO8kawTG": [],
  "1G9ZLWujUd4e58V7IqbBus": [],
  "1T1iY8Rt1VHKRoO2dDCBVJ": [],
  "1o0WrmMKbUfgfQghod2QJH": [],
  "2KewEocognk3bL1lQZe45G": [
    "0S5gD7VAwtV4l9U2Jx8jyK",
    "2BMq835Yir366yDKvW3Rcv",
    "6DIuo1PPKJpLXygAHLKkuZ",
    "5UE3fPtMEts6UkMutPv2jx",
    "0vpFNyHReL2ASeI97LlvAK",
    "5delTPpDAtBDsjk60f5xnt",
    "5L15t6I0PQS9SBXbiklPEN",
    "6IWnCVYva2DgyJicGzVP7I",
    "2wvTwsc93H5xfsHE6QK1nl",
    "1EiTLFDiqnVIWdso4HWd9j",
    "42m44SSX7L4oHchVAntxxo",
    "42IAg1RgfyE8c66KZcSlSR",
    "3V5tndgREjXGlJZEvYl3Xs",
    "2Z8HHweJsQ0WDusmOsqozg",
    "2jKpyH0q7d85BevWLtdKGB",
    "6OjtkJDlAZzlzAydEn78cK",
    "7dqb1363wqRxJw9RfgQeo3",
    "0mvZABpEv6F8asKYI2ZZpX",
    "5jrVFIwqg3H8O1vDZqeQOB",
    "5fBcVfTWenqUDOYR5SjzEQ"
  ],
  "2al4J14a2Q3LJHaxPJfxhA": [],
  "2cu8gKkDy2b50NmHa5hYjb": [],
  "2gGFFoizdSvguephIKTOEN": [],
  "2qqnruS2pDbFA4lOJgu2SX": [],
  "2u3rCmZ7YBfEeq6p9I5kYD": [],
  "30r5AIJ2ivyhBNz2akSAhU": [],
  "34gYMt15Ki20Ie421g1QCF": [],
  "08MZjMj5fS2BWMykxI6Q6c": [],
  "3PYnSZxzWOF9c8caH1JvUG": [],
  "0siMGW0usKCoFTh5kyZIZ4": [],
  "2XTg7bjSS6aFDPzJyCZH2D": [],
  "76GU6UN33eZc7fCVRZ2oJW": [],
  "7793uzhLMLFDClV4Imd6G1": [],
  "4JAaeZsXOEyueMTdx5FFL2": [
    "0Pltl5ktEZFqm5TKRLcQaL",
    "7nuSTNTAcDVJULc1be6vAZ",
    "4Xr7ffaXgF2bvcq203eEpV",
    "21M0yXfdN2ewdzss4Sqf8M",
    "3oxrvZthS5dA8xsbVWfGqA",
    "09ZLAt4mZJwxy0vWB0703w",
    "0nyKVqkATGrYXA98ieTJr0",
    "1Y2TujuCl2jLHQGlbevTip",
    "4IQHUz0kIZfHNEOyPQwI7J",
    "5IRiBpTO8LDFHarNWYVkdn",
    "3kI19T2Y7mzINNIOGHTg5P",
    "6jtibJgWNPyrA4pIQCAZoh"
  ],
  "05TM6Glg3rhABPhe9KTzLu": [],
  "05V4K19VvMTwj93U3MTXdb": [],
  "0E3BCiUrbtxnDXNNccE7cq": [],
  "07mT0QkQqhgqOxJNiHytA0": [],
  "08ALfZ3DZyzOpVqkzjL4CH": [],
  "08M5IPuCaZ9h8NrRXTfBZp": [],
  "033ILCMVViJcj4qk0KStDa": [],
  "0349sopNfpgPZ922ysfsy1": [],
  "034I93yj4oItrwW0YK6HWp": [],
  "034LKuiaTdmNJpnlJp2sr9": [],
  "036si8vS5Gb2pj5QKRdu5i": [
    "6hYiUeYdR2736wgp7XP4wB",
    "6eDRxU6o6dFjbihKVmvZlp",
    "41gI4EK7sIPtuFTF8iDDBY",
    "2YOJmMihinyj0kRr5t6gLw",
    "38xUrrXUZkqaB8lsyABrSp",
    "4qGAYL4VxnVwc8gyimJpjm",
    "5MPk3w62hcNGqH3VGEnLYY",
    "0CDoaxYXFhQhhWnJbakwhK",
    "3ih3juzYdntibOuiSy5EGd",
    "2lFtdhYSo1d1d2mylByoRg",
    "1XBgFHhFufdSSKuxMDHDK5",
    "34bBcm40iucIhkMMRBo9Px",
    "7zm3aSdmGiOkTt0aZFSO8R",
    "1owe5zLmswLy5azanfUYJ9",
    "7j9ySm2W94i0Ol2JlH00Fy",
    "1QcMp7wqUYYDTDFQiV781Y",
    "2aqC5mYiG7efJOab9zW8tH",
    "7oxmGuRN0eibh3osHHaVAs",
    "0jLVFpDrVGMf3SivdZntj2",
    "0zVtG702Iv6pjUEP03puWC"
  ],
  "037VJ1rGCVBQksogfn07JG": [],
  "038Pw1X9k2uCQ6m9HiTiXM": [],
  "03Bxo9Qt5Ylcc7RiPzVpcM": [],
  "03CRSehxfaNaAihy0pIVbd": [],
  "03FUQM1Ol7SIFdPpr0oM4m": [],
  "03HPzTbqd0OO6XO4cYqt0O": [],
  "03HbS9oxb1JLEwKxHw6otY": [],
  "03JHiSK5tUWdqkAYpJDmZg": [],
  "03JdjsuXlR9CncfUOOuMte": [],
  "03JxQEdQvIOO8rYtJJCPos": [],
  "03Kfpd38tmOZXWjSjKpwPJ": [],
  "03Lht5Xxl3AIDEBwCusFlA": [
    "3UQQZeWtTQK47N6AtArx3q",
    "5ASt1uR9O788O6Vkrt6Lyv",
    "05RyRunvF3LFJerVnJyITK",
    "6bVRgRiiVEpW692n26jy0C",
    "3k3Z3ZWfkRv3waoAN9sLVG"
  ],
  "03MuqwxKmmIQlhn4f89Qpj": [],
  "03MwriVfmk4mlfWZEwS8M9": [],
  "03QCtbsyT4U2DtBDUPLHxG": [],
  "03TtPiRLDr8tb6VuAPtuW3": [],
  "03VgyS10PqFiiFmhCOvggC": [],
  "03Wde4G1lgw3EvkrnkMpEC": [],
  "03WlegOJiCENpv2E1QV9Be": [],
  "03WuHJBU1bQ2OvTGBLXpwX": [],
  "03WwbwduAlGHE7n0GbkBQF": [],
  "03YEJQFbUCWKwhw6QPCy2o": [
    "27oQ5UNem3Fug7Vx8GjBVa",
    "5kgBb6GU2lipIB6DHpO3RM",
    "7eJW4qX32RylqeZpfG1R6v",
    "1h25uv3ys0nqiIVgUofpJa",
    "76G0ZrVpX4wi9EabZsuFBE",
    "35rdNxPrRg9TIjCw062Vp5",
    "468My6wNrAEjR05Z4OPwmQ",
    "1549hdoMsXNp517gVUs98o",
    "0hfTpj6KhTNt3H7SXCXbDx",
    "1pSEwUk6YQHWZgYJgYUC3o",
    "1Pwax3kmPkmarITHog220t",
    "2b9isx8joc26VJ3pGMI6Zf",
    "2r3XOFD0OIHNwHUscxYcs8",
    "2wXbwx9TqOymB3gS2Xy6ns",
    "2yQ0f0DCHnBe7mZPitkZt6",
    "3sIvt6ui2YaXVQ5MoNSW9o",
    "59S989zTq7dJgf3fjud6Ma",
    "5rZyHVCvF0rumAtmSBeMKF",
    "5NnXmjMPACjm2aD6G8o4BI",
    "6Bs7rGFEplXYiVzRORNCrO"
  ],
  "03YmZ0PDZ8dlq05F0ojWV6": [],
  "03YoTLzmKtrgbr9irM1DuK": [
    "16WjlaWpBD7mweECfRTP1u",
    "2eNkGUG8CM5fJynMKlYYko",
    "3r7iRRfvIszOPYozFxMXFB",
    "3T50J1fVNdaMNNgA2x0xaF",
    "2QElerNxelRUoFEnPQAnpA",
    "5dxkzIjlovOd51tXvDbUgc",
    "5OUfOG9fTwO4eZbU68NMHo",
    "0rfEAIJMF2SM3xAO0nNsL6",
    "6581kEoQoXNoI3TTCpPP1q",
    "7h8iBrVmiZgGwZWfKWs1MO",
    "18ucPa6ZEAauA9G7jajpu2",
    "18V5zqylEUnJvLSLc8cuHf",
    "1tBxo7zs1XFMIY5xbLn3Px",
    "1tOVtdIFhYi8hT0EkVuhlE",
    "25ZrTi8BnXdh02YZTmGOpg",
    "2gmEtI5mIIrpItEnPE8qV0",
    "56dHsTb0kERzmNtgsjLYqD",
    "6tn3HOpQkpi59LyeuOjduj",
    "35dnGUw6NSvUm9cRjZTNDu",
    "4wbLMWqMMTqfhoO0FnCs3M"
  ],
  "03ZTIC6rQ44auEYoNEjflu": [],
  "03e9Efpg1iuZFHpf3WfFbp": [],
  "03fsmnfmijO6LDwTHkt4pK": [],
  "03gr0xqWUs03XDEmTT5BwE": [],
  "03gvKThXKpD4fFdnEh4lrP": [],
  "03l93VbLR8FF8ojDDrskji": [],
  "03liKy3E1Il66TXcMSssNn": [],
  "03ouMYEy4CuGIKCTNZTYwW": [],
  "03piJrxzd3ciKtzyJbjk90": [
    "4QEiQKDK1s58lVKW4tfvsO",
    "6ac5t41XVN3J7svCuCObJO",
    "1eAvhoG2yKzjF5KCVRLGdu",
    "6fDeInnA8V2Zb8rSWjoDav",
    "4dfxINfMU8xLRbAVsohstU",
    "3LBGbVPAfMloY8jeGHWCR7",
    "7K4Wc2b4bap6qb1IxVlFcr",
    "7GUc2QZr1V7lC1ZDZd8tec",
    "7es2YLxTYXi9dzmWI3KZjK",
    "0WU7JA5iEz0gidREXU1ss6",
    "0w6RslZmB1ME2GxJKRg4qO",
    "6qzrdIxXaluZHwyz3Jo39X",
    "3YIAlsQ1Fb66eRDKqiaQJs",
    "7jrU9INGn7QyFGl4CPalHo",
    "2MvCjDjbF9A2BLHmTiMIGv",
    "1I53MYk43ARxk7iHuSEMvn",
    "7zBNjEb9CMtGgmOJf5QBdh",
    "2bjZemKbcsMq9B0xZspN8W",
    "0BVTYBgDBQRMRTHMuEu9EE",
    "2HH4vpz9nYo3ZqpeAPWZp2"
  ],
  "03sJt5CJA0Yrkn02lKwNyG": [],
  "03sL1097NXrT3uwILAyQCZ": [],
  "03uP1bHH1m41GxKccZB5xt": [],
  "03ukdMKR6oWA6seWcjGYwo": [],
  "03vSrSMuitOlgLoA6WT6Jx": [],
  "03wwKnLmXEoLf1wyVbJO49": [],
  "320IRZ1nffhXLLcs2CSX20": [
    "7bF1kZnhlO55twMXqZQIhX",
    "25dWON1MPAkZhYaDhtIr90",
    "3o6jqTGntV0vVY9Mo9XpZL",
    "1PflWU7nPUElTWqYUBkK6W",
    "4SPvdqkhRp1ARWJvxByVuA",
    "1DXO9tl7mebiGlF0k7c9pw",
    "4GIqbOr0FgE9qmJ31kVYdD",
    "7LA4bHpsuQA1bNuxHpqeIT",
    "5K6CrtQfpRipgTDZbaSj7k",
    "4Nwg6u4aPLC7lRbDOQ0pzn",
    "66VG2mrV8hpXCAiPI5WYG6",
    "45Ky007Gg9plnSyTZT1E7n",
    "3upqBHklKNJAC3YoqAOSUo",
    "5H1u3kcNM0d7DJlihbXvBp",
    "2RQsqlGDunlzpIEm43kSlM",
    "7wHGioVXNK6WomD7nnT3Nt",
    "1e6dQzOjEh1eHhme10gUjm",
    "7po1FepqIImwFFx1ZITjJp",
    "1e1hMHJbMgb1QNtBg2edHA",
    "6A0OhEyMfSsEmD5qH6jwdo"
  ],
  "04hZpWafiOIBBaSNws3biT": [],
  "02Wui4dSNtotPNty9KujjS": [],
  "0F55iBmNDhfNY0D8bQJIWN": [],
  "0HVd2NI0cxifx2L5SgoDw5": [
    "1bMU5T4v8xrleZJMhub8NK"
  ],
  "0AXhzThzJNWlDkz9i5wt8k": [],
  "0AZ2SjFG74wuRFUp6PDgAE": [],
  "0AbA7z4tGnjQiES3nNnJj1": [],
  "0Ad9EFd1mxpINU0zZsnBQP": [],
  "0AdHVkcWZUOeDHywvKw9Xa": [],
  "0AfUbQ4javJtqjAvEMKBFK": [],
  "0AgR3ydxfJYRUKF6grHQuS": [],
  "0Agu6yBJdgSHN3OXfsMtBd": [],
  "0Ai91vAFNWZxhn9vJ0PAP0": [],
  "0AiSweXW1fLs2CcWLpdg52": [],
  "0Aiuv9sTlpR4KaGu3eWnPw": [],
  "0Al1neo11fixKK41diFws6": [],
  "0AlYvYUBLgrXxwJl5iUlNd": [
    "58ehndX799ZV9Jcv6IefJ1"
  ],
  "0AofXsKSQ8CuxHl2phmbTb": [],
  "0AppEYK0ilWWZfXZGXMTzY": [],
  "0AqWL048HfFLKxZPKSq1LU": [],
  "0AsBgDAOTvlXe5e0vHeA07": [],
  "0AsR2x9XkqoauFn7AsOzjb": [],
  "089mK3lSTjTt3NP1EYnHUT": [],
  "2vGy3RFedNqAMIk4DGebnR": [],
  "3LrK8cGD7FQaktvzvaAR3s": [],
  "3dzTImUFRRJUNUFiuu0Tzr": [],
  "3oI750OHVcgb1Pv3zaB7Xy": [],
  "2mnD3lfc9infcjV6vHIV6b": [],
  "6ML6W6KnWuN4PhzVRDI3PA": [
    "2V2yDPc0YP45g05EYC2I7o",
    "3eWAbNVKfXBjWQp1LS044b",
    "1gaspnNfOf3o6Fe0F4ENTV",
    "6bnpDeHm1Jlf8Efpu7xLbC",
    "2aA4bTg8oDldvBGEtA6TBN",
    "3U7MmyRRgouNYxE3HgHACI",
    "4054FLJlaY1QSUMlEN0ohK",
    "4teENnwIlGkafM8A0fsvLc",
    "58kcK6ZVxtnooYbBNwPCQm",
    "5RtAuOa8wLo4bVWylgls4s",
    "4WHuUgxiRUtpo5oEnM75ky",
    "3usa1xHozoog0HzOeTKHIH",
    "3Vy8ERmYx1fim9YWIjOdFI",
    "4BO8cTpEuhLzmJayD2MHQo",
    "2CczCgmnMC6aNVRHJZe0HH",
    "0RcUS3vyYQwBgEM0BWSkDC",
    "04cWYjqqdD57stLo0XlGat",
    "7213Jmldfisk4vfmFlDBwJ",
    "2JGLjTHV2t8u8wxmLaiFfe",
    "45RzKwRoShFSXeTTGQDVpW"
  ],
  "38wtgSBaCeiA3hxkWuYvwy": [],
  "2TPSrYAEwDwaru13NuJYVI": [],
  "1gjDYTQtjIUuGBOLnwjz96": [
    "0sEIeYlleobDxcQBm7sEC2",
    "5yzYU6P4f7kwwvb13Effk8",
    "07yJO4Hwuj2fgDhJuS59Ra",
    "26r0OawiWJHIyUadqsnjuT",
    "1arCg10z9EyKAdaX25giAV",
    "5cYBhfCeaJf6ekD7l1fqCA",
    "4wtvmnLdimSVoZljtRTXEt",
    "2tx8DRcEFrlaRjN4YI65Wm",
    "6N0G9NuKkIUUvV9EHsmAbE",
    "74LzQHIUFJnkPKLCXe33OH",
    "0kxLdHyYT26bwSQUdjDeMZ",
    "5xweQ7BZHgRulCPtfrdiDv",
    "3vh9mYQ5hjchHFyRbpFNpd",
    "2BVpC7SwihDMeBsOcugpRD",
    "5i2YkDimWUcXzDXuyuN6pG",
    "0s0GxG0hK3HQQ0qcYjCjvz",
    "0FSo4wKwWi2Zk7ig7I0DE4",
    "6YCluxevjOlleOkF9dTR1k",
    "3E9vvrduWa8srD7FsWThrj",
    "5sbe8SDWJAlwYbw1Hfc2kU"
  ],
  "4662l1ZmSwzD5gDGF0I5uu": [
    "0k9HfZ0DwUvVIUyFbEfDIR",
    "7nbOE0RhCrS1GrDEaVUVee",
    "1dOeZWlRqjUtZctYJCZsCQ",
    "1DixLsLZShfpRGCavAekSZ",
    "048Ps9xL1nU6dsliRDJi3y",
    "1KYLoFQ7Cwm4eOHruB5OMI",
    "4SjBX6jitXDJ7VUfIqeXfP",
    "3Ib6KIEhkT9Funk4mqF4Lh",
    "5CvtChuDVlejwaMPQb9Sx1",
    "4KzLzaLD6kJcOElGcQplR5",
    "4VvzpUNrZ5CAqRascoLb1O",
    "3hpONtG7g11sff6QbGJIfY",
    "3UmO1Acb6OVGSfiLnYe69n",
    "6VBeD0MxrxKKw7FDK8FwhB",
    "5DboBy35CJ1kezDm1ebqbC",
    "5ohM2ZA35IpUZNIAiK4RoY",
    "5TlgMX2qZVaWy2JI12tK2q",
    "0ocA2OjaXb4KyFX7zJE2Ld",
    "05NEGCiyDYaJtcPiagl46Y",
    "3kNByUYht34hI6ugWqMtCq"
  ],
  "3aqU2gqfD0iH93x9KcmT3B": [
    "1ga5jO5WHSc52U7aLHjgMu",
    "25EjahuVJSUCDKUBZXZatX",
    "6YsYPnDnM3Lbwt1bJjc8Wb",
    "0Nxu1yyq7ys8Pxra8sMxpr",
    "4waUZg7jQgyZE9odZgglJy",
    "7Ij3qRinMFtEpzRghKIHtE",
    "3WFhwMCDmVICPFzjYKz5b6",
    "3ZA7Ihb7VDJAEo9XqfOyGi",
    "28yTSmFptfeNJpbCVw5teH",
    "0d2A861NEFqVpEogrYewVJ",
    "7zpSH2chjM380vMwQTEOaq",
    "5LEmCXJme6YXqSDzOyFTOQ",
    "3juLGrDGl9tPVXCSCdR1RO",
    "3OrjkcpKAlJClVOopBZicQ",
    "3aFNWFkFsSfGr9UPDxagWq",
    "1ZtQZiAFtQxShlzVK97epb",
    "5mQTleQlg6bnKGfJVx9Ylz",
    "4FeN9FV6xecISybbcacns8",
    "5ioaYiDl0Yc0tQHac96w44",
    "6GcITNa8kV5Fv5ihMhLAxA"
  ],
  "6hC3tI1R7sHgplEYPviFZY": [
    "0xq84BBDX8aOGXSu4rOSaf",
    "5GFa1oIEY4uabHh6L54t8d",
    "1QzkpIrrMhBwTa1eb7o9XD",
    "1mhrMqIzessJ8r38RW873s",
    "0SP7yNCfWwHIDCNTPGsN58",
    "0u8FXqe4959sjoLUgQeKJB",
    "4TGsXIntcGStdQyNQCIniQ",
    "1kBh98e7jm74IjwFbAv9OQ",
    "1ZUbLxK9Kz0ikxfREMbeSo",
    "77lIcMj8n8EME52oE0pcxN",
    "5MKgOzGl9pBQ1wgcWL88hJ",
    "1gk2rAR139bIdjgbDSyvT5",
    "0B2RE6SzZ4QsCRkl1nMz1n",
    "42piYricuUve61p8O67daU",
    "3Ry0Bx0jq7Z6nbzTfcsvkL",
    "14KUc7zg3OndrAMbCNxPBD",
    "1szZbhqQOu1TDHF4bqDeVM",
    "6NaKJLakKOpxelAHi5MIaz",
    "659t7L9mu8Kfk0JquBRXFM",
    "5LiOoJbxVSAMkBS2fUm3X2"
  ],
  "0ILH1dJHi09i2y3kfnj81w": [
    "1Bl1x1lp1MD3FElVMbIaI9",
    "1szZbhqQOu1TDHF4bqDeVM",
    "62ABL5pqowZJin1fkheWo7",
    "1dbFhqu4QUKe1dVb3COB9w",
    "0XRtBMgyBDVmBKAR2mqmR4",
    "2Bh9iQTtKB9vzl6iLtwZ9W",
    "3JKmqcWnr38kDGRUtpt2iN",
    "0G3clFNzFs2JAtbNy5EjWU",
    "2YoRJiw07U1T5lsPXR2cFT",
    "3RibY876FBPC7kuqm4YqzJ",
    "3Ry0Bx0jq7Z6nbzTfcsvkL",
    "45VlRYHy2l5slDXuCB0l1B",
    "64Ni4gszhSPmQhN5zhzhKe",
    "3vGWwim5gZ0QIW6PA5ISDU",
    "5EE0zQh1AHPJ4Et3Hj43G5",
    "77lIcMj8n8EME52oE0pcxN",
    "74jNjqtTPX0TDvWws6SQfl",
    "5MKgOzGl9pBQ1wgcWL88hJ",
    "4NkIT9ejpKX3c6zfz3VzrT",
    "3E2zkgPu6SUNZb35jvmzdt"
  ],
  "1QeDg5lxB9DDmYpEDeCSqU": [
    "6RlNuHRDeVSq9y9VBzgkw7",
    "178VA738PauCWm1ZjjSaD2",
    "2qA6QJKyk9W627mEn65hob",
    "3GmAEo2lOqrVb7BrHvUS5M",
    "3No5HqLrMqJbmpJ1nUjUiM",
    "0QjJV75ipbHTMHOeAUKlwm",
    "50G8Md24RBllYioL9BeZ1s",
    "73HzrMaQAGRv2nHCiOBlam",
    "4D56DujhnBViJ4oYCSl1GK",
    "2iVbeoHF7eoAzewGxEVRjN",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "3JY4oF6rBQ45FSVUJtXixb",
    "5z7054rmpJ05mohSsOE0sM",
    "5gii2fYcxLoUHWd1lWe4aT",
    "7J3PlfvQyxabanXsQQtJf0",
    "3kww2RwVsla3J0eZyfRLIu",
    "0nPN4LACqiKfOT6eesvsBF",
    "05uOsFLijt0mUTxSD7OaLw",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "3QSFLkwEghCeYY042s6uWs"
  ],
  "4YodKr9jquVtUcSmB0gQEf": [
    "3Uqiej8rzmFMC4HBcpOsTz",
    "6plyOBsqrNKBe1Y1zitlK5",
    "4ItsXJStGq1NA4LkKSV6WJ",
    "1TuFeddzdF12Gh1UO0LZ89",
    "74dYlKWNZPsROUVxD9HUlO",
    "5yBslrSWPfKklWwZbzLHka",
    "5Znb6NCOOTyI445iuPjwKe",
    "3RCx5My8byOMt36OUepQrX",
    "1PWbiGBEBaiLJI0Lvhnoha",
    "5qdByjZTAuYQgpw3gCTaM1",
    "4EeqD5ulSmYhfXSXegeRHi",
    "4x5gKT4GLdUhKGHCxXNirp",
    "0AIwIaXcO8NcV9Dse8QcM4",
    "3feFwQjjuQQSFTi4jilZbj",
    "5xQYGNmnIiV7verfzMo8Vo",
    "0AcplqB50fO2m9SiFNIsSg",
    "5ArqvMflDEhxdqW8sBBQUQ",
    "7BevvFNyB69FsRX8xa44FF",
    "6gZQ1gJJ069kkcJogwx5l7",
    "1fneR6LDxl9hclxo1OP2BP"
  ],
  "2VhvpyL5hj1YE4SYvIsUks": [
    "23vsv4czNaowiMYukchyrN",
    "6RLQ5qFAM12mDXWoFw9LjD",
    "4rtxMgmSUuGnQbvf61BDB8",
    "0PEtkVtJ4LN3JrC8EkM6lC",
    "0mldH6GcoYEV145HY3GHEk",
    "0UqAPNk5Q7nLF2kb2b77DG",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "4Apvih9OZt9ghebGFIVcXI",
    "4JN7rRcxaJJRYtUds7tFzn",
    "5H5PTrcJrdZxLKlm4PbShh",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "4QXL9FM2NnfIl3KzLPXxTV",
    "3eYDYWVCJJdaGcogTI2s1O",
    "0nPN4LACqiKfOT6eesvsBF",
    "2iVbeoHF7eoAzewGxEVRjN",
    "5SAeZRhgmJhgq196BR1Mna",
    "3kww2RwVsla3J0eZyfRLIu",
    "3JY4oF6rBQ45FSVUJtXixb",
    "3d3pm23Qc0Pa9v1mQqTtj2",
    "4gphcAS0BSFcl6CeGQ9dXc"
  ],
  "5cXfFsNEAbnAyDBb84sZ9J": [
    "1ng0MRoxBZq8WEGEuoXxdq",
    "0hTXG5BWaXkUApYSmIgVjk",
    "5kOLdtx8iK9p4Ka01J1wEH",
    "3SGdv7Nnxz36kYLYcSWuJf",
    "2qA6QJKyk9W627mEn65hob",
    "50JwFmDkbQrLizl35dUzoV",
    "2L4B0k8Gf6oPWl3q9dAo1z",
    "1GPjJtmte37sKnqP8dhI6S",
    "5jWSSTdZoJjEjsrlPflz93",
    "0QjJV75ipbHTMHOeAUKlwm",
    "6RlNuHRDeVSq9y9VBzgkw7",
    "5SAeZRhgmJhgq196BR1Mna",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "0UqAPNk5Q7nLF2kb2b77DG",
    "0nPN4LACqiKfOT6eesvsBF",
    "7J3PlfvQyxabanXsQQtJf0",
    "6Ir3WQaUYIk2aTmHP9Qb51",
    "5gii2fYcxLoUHWd1lWe4aT",
    "3No5HqLrMqJbmpJ1nUjUiM",
    "4D56DujhnBViJ4oYCSl1GK"
  ],
  "7AGlWsIaI9UeK7XxvUDpcC": [
    "4d6Lh6Gc5i7KlNgMaITP3x",
    "5QooKxXJqVvggASh8k64Za",
    "4kcFc6YuW5uylK8qf6lzBO",
    "5FVyQoHfSojIRpThj7vpR1",
    "27E3qEzMzn0t2ulMh83XTW",
    "4b0sIRblukAJ4YH6ArDv9w",
    "0UqAPNk5Q7nLF2kb2b77DG",
    "1QyutNR0XJdq4KHwfISz4B",
    "05uOsFLijt0mUTxSD7OaLw",
    "5SAeZRhgmJhgq196BR1Mna",
    "0BXJMW4PTSQlHRj9w2X7JH",
    "0nPN4LACqiKfOT6eesvsBF",
    "3JY4oF6rBQ45FSVUJtXixb",
    "2dTieljE0C4ydCdUPIPLRW",
    "3mOBpiMaPgakbbnjmCZK2Y",
    "6jpodwfP3WjOQdpUEM9k6B",
    "6VTls9bycRFBhvMzVhbSLj",
    "3GmAEo2lOqrVb7BrHvUS5M",
    "3UjWu4XVz5QJs2KgqM3Eor",
    "6znApi0MuZQEpmkAroh1IU"
  ],
  "7k6w5wp6OqLPchrLXo6RV0": [
    "3yjqxf3d3aCOFrrsxIl326",
    "28KSeoYQphCQ5cGa0cuUCm",
    "2ftgrv1RUbg93sZm5YUldQ",
    "5LxgQAIt27VOcPj3SrU9yj",
    "3e8TWuBQYgKBa6feub25D7",
    "5uCnMy5Rp3F3p9NV4gr58m",
    "3k9XSew0mrAQytiYyIXf18",
    "4XVqHzDwptBxNiJlDzUXAj",
    "6dcbo1dJld5wdwLeno5MBE",
    "6qCp2JWyWiUIyFdRmrATWa",
    "1QzMZ0QwJRo3LJ474BiODq",
    "6TAU8vSvpMp0N9fUqv0Grf",
    "16qQcoH29BgfLJtFqSPT2f",
    "5wHxSZdr7rIyqlFJxH1gCM",
    "6hr0SehcycxwgYfCgVy32M",
    "4IVlorYhuVoIUWg6HVx6DK",
    "7AeZxAS13MpeevgsRCApcx",
    "1P3mW4QxxLzCl3wljOtMrH",
    "7qrOzdyeWPZrjRXWownuiH",
    "09iEIVQVBtTVjiuEdqqkIR"
  ],
  "5wkCcDqHUaJbR79G5rEEpL": [
    "4Se6WxeebNL0yEAs7NvCMY",
    "5kt7SkycNsq8vbKoFb3QxO",
    "1vNIIIbjhp0ZqFHwtsZV3e",
    "47fpeEBmobi7jkLjy4Kf0p",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "1XSVGwcOBIdSrcGp4gRSgL",
    "65IXQZtLc1OfW8H9YxRFwY",
    "0Ow3u7upUsqBVCKjEDYWBs",
    "5sDstwiPbl3N81xdnDeKor",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "10vtHOCA3qPLmrGylgO2F1",
    "4LoFcBNitqIC130rvzS6BG",
    "2MvoqSSTigBbfXWoSHGtgj",
    "19TslKl8qhtMCbzoujrhv9",
    "0oIxiHRBpqq0VJe3wOY8Qr",
    "2ZLxgHHd9oTGrItlFX9a0n",
    "7CZEgK9uHbpW0RdfbWRIQC",
    "3WoxTj3fh8I58MpnwZyYyL",
    "2c0g3I65FUsbBQIBQzK50z",
    "3budmcJD4fTyytFVDp5lud"
  ],
  "0Ow3u7upUsqBVCKjEDYWBs": [
    "5kt7SkycNsq8vbKoFb3QxO",
    "1XSVGwcOBIdSrcGp4gRSgL",
    "4be8BKksk35Wc8kN7LhLnN",
    "7CZEgK9uHbpW0RdfbWRIQC",
    "1vNIIIbjhp0ZqFHwtsZV3e",
    "5wkCcDqHUaJbR79G5rEEpL",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "10vtHOCA3qPLmrGylgO2F1",
    "4Se6WxeebNL0yEAs7NvCMY",
    "0oIxiHRBpqq0VJe3wOY8Qr",
    "47fpeEBmobi7jkLjy4Kf0p",
    "4rtGF9EsMgFSdpSP2OG53N",
    "2MvoqSSTigBbfXWoSHGtgj",
    "4MTd9MHb33LFgRKqWG0jZi",
    "3nS7sxHI6ZFPFkfg5Fbml8",
    "65IXQZtLc1OfW8H9YxRFwY",
    "4qZeDZdBD3NiWVbkwX2Lpx",
    "6AETRCQep85mUtIlX7BaFV",
    "2ZLxgHHd9oTGrItlFX9a0n"
  ],
  "0XRtBMgyBDVmBKAR2mqmR4": [
    "1szZbhqQOu1TDHF4bqDeVM",
    "62ABL5pqowZJin1fkheWo7",
    "2Bh9iQTtKB9vzl6iLtwZ9W",
    "74jNjqtTPX0TDvWws6SQfl",
    "0G3clFNzFs2JAtbNy5EjWU",
    "1SkyJrTK7wUmLxV9H7ekBt",
    "64Ni4gszhSPmQhN5zhzhKe",
    "4GrcYV9Tyformhut7lR9HV",
    "45VlRYHy2l5slDXuCB0l1B",
    "1lc87doqHKOCkWBBcAHYYG",
    "3E2zkgPu6SUNZb35jvmzdt",
    "3vGWwim5gZ0QIW6PA5ISDU",
    "1bshphZh29CbPD7uyWxxk3",
    "3Ry0Bx0jq7Z6nbzTfcsvkL",
    "3MqKTtxz6LzNrRJugeYh8W",
    "3RibY876FBPC7kuqm4YqzJ",
    "0LLanvyGRoHpB4AmAdJ2i9",
    "3JKmqcWnr38kDGRUtpt2iN",
    "1Bl1x1lp1MD3FElVMbIaI9",
    "12vM6NrsES5aflXWyPKukO"
  ],
  "2Q594S3OGe8r6WFITrtuXl": [
    "4VJQ6SP3owqi6WMiGQcZiJ",
    "6347vDZC2ePPFCm1zSrhFe",
    "4lu2aGmKZIq6LqMvnrw0lL",
    "6swg8Shf8ZvA2vPOyPb4SA",
    "7hqzRITPtXSEN7tAvp08Mh",
    "7EvDSfxicwLE0JCefqIFiX",
    "7cxGtnC5bYkbjrb0iMS4tN",
    "1FGK9x2fh4SkpKyL4keggY",
    "5B8x8r9gHNj8pVqc8sWQyW",
    "37wvb2slf0x1R2W9xIUsWw",
    "5GedKWsY5KWNfveaooCXoX",
    "17vmK9m31u5yEUWYrGB4vp",
    "5OQpgiuh3jzgADQidpRcTb",
    "5yHCtYr1PbIQEpi6nuwdNi",
    "3kddUmwcvchf0Y4oCDFOBJ",
    "7BdJacBfrn2KRKt8DOVGxk",
    "0d2A861NEFqVpEogrYewVJ",
    "2ao7Jx5TiinWuCtz6Lig4g",
    "3cBbuokEP0Xb82q91g9G2P",
    "0YWKrWRSiFFf2nSpot2Dju"
  ],
  "6AETRCQep85mUtIlX7BaFV": [
    "10vtHOCA3qPLmrGylgO2F1",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "59dLJG3ZVwkMZLFKByQCJB",
    "1sTOtMflHQ1ULtuozST5RR",
    "3WxVICwFDAWMTWH8sELmRe",
    "7x2a9uyqlWbE9LwcoQWDTo",
    "3FjdJbt6Myq32uv7P4owM1",
    "40c6EALi3nTmNeOAS3Eu5h",
    "7F5m9Jw4sg853wTDmmJvLi",
    "1fl6UrQ5p2aQQwKfkrPNpW",
    "3q1NXsv9XypOUCJfEatXH9",
    "47fpeEBmobi7jkLjy4Kf0p",
    "00demsNI1p5KmzWGlrnrdh",
    "6CrQKZeuSKNYgrE7PeYqJ1",
    "0oIxiHRBpqq0VJe3wOY8Qr",
    "3DnlTB4No4W6fO6Qvghnm4",
    "0OdeZASgfypHefnghEjCAD",
    "1wELOF6Lb5TckxS5EiiQZe",
    "1MuQ2m2tg7naeRGAOxYZer",
    "5kt7SkycNsq8vbKoFb3QxO"
  ],
  "6lnMsBUq3n28HaxwRJdXUZ": [
    "6j4UmzJGQCJV4o2lGoMQWR",
    "5mIa51bRQk9E2oKUJnuuVS",
    "5ykyJGUjlMaJojy7IlimpT",
    "1FGK9x2fh4SkpKyL4keggY",
    "5Gc3h7r4iV94WZYozevgYT",
    "1ga5jO5WHSc52U7aLHjgMu",
    "5B8x8r9gHNj8pVqc8sWQyW",
    "0bWJRk7RVy4BSt0S8S7fTJ",
    "4arvU6IZ9iiulbCZPiO1GB",
    "7xEiX76imldiwL3joKgoAm"
  ],
  "1XSVGwcOBIdSrcGp4gRSgL": [
    "5kt7SkycNsq8vbKoFb3QxO",
    "65IXQZtLc1OfW8H9YxRFwY",
    "0Ow3u7upUsqBVCKjEDYWBs",
    "5sDstwiPbl3N81xdnDeKor",
    "2MvoqSSTigBbfXWoSHGtgj",
    "4Se6WxeebNL0yEAs7NvCMY",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "7CZEgK9uHbpW0RdfbWRIQC",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "2c0g3I65FUsbBQIBQzK50z",
    "19TslKl8qhtMCbzoujrhv9",
    "1vNIIIbjhp0ZqFHwtsZV3e",
    "48Idb5uZga8diRAMTc9q3E",
    "4rtGF9EsMgFSdpSP2OG53N",
    "4LoFcBNitqIC130rvzS6BG",
    "47fpeEBmobi7jkLjy4Kf0p",
    "4MTd9MHb33LFgRKqWG0jZi",
    "5wkCcDqHUaJbR79G5rEEpL",
    "3WoxTj3fh8I58MpnwZyYyL",
    "4be8BKksk35Wc8kN7LhLnN"
  ],
  "47fpeEBmobi7jkLjy4Kf0p": [
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "10vtHOCA3qPLmrGylgO2F1",
    "4Se6WxeebNL0yEAs7NvCMY",
    "1wELOF6Lb5TckxS5EiiQZe",
    "3WxVICwFDAWMTWH8sELmRe",
    "3FjdJbt6Myq32uv7P4owM1",
    "5kt7SkycNsq8vbKoFb3QxO",
    "1sTOtMflHQ1ULtuozST5RR",
    "4LoFcBNitqIC130rvzS6BG",
    "40c6EALi3nTmNeOAS3Eu5h",
    "7F5m9Jw4sg853wTDmmJvLi",
    "65IXQZtLc1OfW8H9YxRFwY",
    "6CrQKZeuSKNYgrE7PeYqJ1",
    "59dLJG3ZVwkMZLFKByQCJB",
    "6AETRCQep85mUtIlX7BaFV",
    "5wkCcDqHUaJbR79G5rEEpL",
    "48Idb5uZga8diRAMTc9q3E",
    "3budmcJD4fTyytFVDp5lud",
    "7x2a9uyqlWbE9LwcoQWDTo",
    "1vNIIIbjhp0ZqFHwtsZV3e"
  ],
  "2MvoqSSTigBbfXWoSHGtgj": [
    "4rtGF9EsMgFSdpSP2OG53N",
    "7CZEgK9uHbpW0RdfbWRIQC",
    "5kt7SkycNsq8vbKoFb3QxO",
    "4be8BKksk35Wc8kN7LhLnN",
    "4Se6WxeebNL0yEAs7NvCMY",
    "1XSVGwcOBIdSrcGp4gRSgL",
    "19TslKl8qhtMCbzoujrhv9",
    "65IXQZtLc1OfW8H9YxRFwY",
    "1vNIIIbjhp0ZqFHwtsZV3e",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "4MTd9MHb33LFgRKqWG0jZi",
    "3budmcJD4fTyytFVDp5lud",
    "2haNFSI2XvHycF4x0nhp2w",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "0RZvJL3AicNni7cisqcIxC",
    "4r3fkXdFQYhTRmzz0pwQuV",
    "48Idb5uZga8diRAMTc9q3E",
    "5wkCcDqHUaJbR79G5rEEpL",
    "10vtHOCA3qPLmrGylgO2F1",
    "47fpeEBmobi7jkLjy4Kf0p"
  ],
  "0PyBsZlcv8KxT5BsBFnmwG": [
    "45sN1U4xtrQEyzIaOUmavp",
    "2HO9rAU2R7CRnmhx0ytN41",
    "6JogLFS7BAeUUE7DBgOOVb",
    "7zsTaSj1Q4jSCjbj5GtmoN",
    "2dTieljE0C4ydCdUPIPLRW",
    "7Erj4RY7uctPQKcfSUMe3x",
    "3SGdv7Nnxz36kYLYcSWuJf",
    "5xQYGNmnIiV7verfzMo8Vo",
    "5G6S0tVzlQJD709dvAvOyQ",
    "6pO5YEkI5hhJNyWo1dwSyH",
    "7J3PlfvQyxabanXsQQtJf0",
    "4ojplASUpD2unLt96i5M0a",
    "2qA6QJKyk9W627mEn65hob",
    "3kNByUYht34hI6ugWqMtCq",
    "6Wvfeq2vPFsjNGxFmcz1nq",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "2SpMjzpc9CfI6WWtwdToiA",
    "4CacTDAcLCUIscmGzoQE4z",
    "6iqeypk1XRa2zQVRcIVmlF",
    "2aKUJM5SfYaze00aCmx2Ei"
  ],
  "4LoFcBNitqIC130rvzS6BG": [
    "65IXQZtLc1OfW8H9YxRFwY",
    "48Idb5uZga8diRAMTc9q3E",
    "3budmcJD4fTyytFVDp5lud",
    "5kt7SkycNsq8vbKoFb3QxO",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "5sDstwiPbl3N81xdnDeKor",
    "5YDpwWFLxk3wmHBKqAcfiI",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "4MTd9MHb33LFgRKqWG0jZi",
    "6q9n20PmMRLtZc1xCgq0r3",
    "3WxVICwFDAWMTWH8sELmRe",
    "46JHFFEjLKbXhMQsU5vSGm",
    "47fpeEBmobi7jkLjy4Kf0p",
    "6YbPwijYI1KH2v4aPzAORT",
    "6CrQKZeuSKNYgrE7PeYqJ1",
    "10vtHOCA3qPLmrGylgO2F1",
    "1iKe55twFTEkvRNt36B2SX",
    "3FjdJbt6Myq32uv7P4owM1",
    "3WoxTj3fh8I58MpnwZyYyL",
    "1sTOtMflHQ1ULtuozST5RR"
  ],
  "3PN8odvj48fnALdAsCKG3g": [
    "1fl6UrQ5p2aQQwKfkrPNpW",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "0mXpcUpJyLRlNdcrVT6NEC",
    "5QH5oyyvZkvgzAiENV3tph",
    "6mFPT1M2JWpuoSGSCQCpHX",
    "40c6EALi3nTmNeOAS3Eu5h",
    "1MD5pgVzlusqGyuSTcTxvu",
    "4RWamjGtVScGN2kfuoOm7V",
    "0VrvpayEoQOjiRkZQcLX2R",
    "4qZeDZdBD3NiWVbkwX2Lpx",
    "4kp3WqauG2CfMO6ZGXFXbh",
    "4RuYtHjAKBufQRqBUMiOfK",
    "32iWqX9jgLPJBZBXNEhxtR",
    "5d8wY7zfoQaAd8JcXRvyfw",
    "10vtHOCA3qPLmrGylgO2F1",
    "6AETRCQep85mUtIlX7BaFV",
    "1sTOtMflHQ1ULtuozST5RR",
    "5kt7SkycNsq8vbKoFb3QxO",
    "59dLJG3ZVwkMZLFKByQCJB",
    "3WxVICwFDAWMTWH8sELmRe"
  ],
  "4qZeDZdBD3NiWVbkwX2Lpx": [
    "5kt7SkycNsq8vbKoFb3QxO",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "4Se6WxeebNL0yEAs7NvCMY",
    "1fl6UrQ5p2aQQwKfkrPNpW",
    "3PN8odvj48fnALdAsCKG3g",
    "5d8wY7zfoQaAd8JcXRvyfw",
    "0mXpcUpJyLRlNdcrVT6NEC",
    "5wkCcDqHUaJbR79G5rEEpL",
    "0oIxiHRBpqq0VJe3wOY8Qr",
    "1XSVGwcOBIdSrcGp4gRSgL",
    "3budmcJD4fTyytFVDp5lud",
    "10vtHOCA3qPLmrGylgO2F1",
    "5QH5oyyvZkvgzAiENV3tph",
    "65IXQZtLc1OfW8H9YxRFwY",
    "6AETRCQep85mUtIlX7BaFV",
    "1vNIIIbjhp0ZqFHwtsZV3e",
    "4LoFcBNitqIC130rvzS6BG",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "47fpeEBmobi7jkLjy4Kf0p",
    "2MvoqSSTigBbfXWoSHGtgj"
  ],
  "57MNR6CKk1DURSMxF0TO7H": [
    "0GzXF6aABicwDODNFRNlby",
    "5H5PTrcJrdZxLKlm4PbShh",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "3QSFLkwEghCeYY042s6uWs",
    "4uIoOdivSAzUdJB8CTfP8S",
    "0mldH6GcoYEV145HY3GHEk",
    "3JY4oF6rBQ45FSVUJtXixb",
    "1GPjJtmte37sKnqP8dhI6S",
    "65jGZiPXVWGDlLhnICMfvI",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "4TbICkHjrC2B8tMO74P3w4",
    "4Apvih9OZt9ghebGFIVcXI",
    "2kRyLphTQyz7eaHhfLpMVl",
    "2rTlKNAJmNsd0YU9l5OHJ9",
    "23vsv4czNaowiMYukchyrN",
    "2UTjkMC66uUMZkCmFxgwu9",
    "5z7054rmpJ05mohSsOE0sM",
    "1hwojP1Bi7ipcn0qFbe8tP",
    "4D56DujhnBViJ4oYCSl1GK",
    "35C2ZfgMovQotan3rNrYT3"
  ],
  "4okirS2wFnoVYH60wFbiuL": [
    "3ymQnFVhbnXaIxJ5bx84Lr",
    "44gwyR0NL3dALyIGaL9NFE",
    "0lHsA4VFPhU5bDBYPMskM8",
    "1Yr19zGBA3JmVYOcE4JwRG",
    "4idyrAA6wZyU9umXHFoM9p",
    "07S2B15CcvWG4jyfMhqx8X",
    "3tkyefEX4NNjb0AILRLq2A",
    "3lwRbCTt1qmo0QgXUai8ao",
    "7Cg2eqV6oHNE0P54WfajIX",
    "45NmCZDtKwIIVLpl2c3csx",
    "5rSSgiiHz9IhOi6T63EBKD",
    "5Z2Vs6p7u0a44wcO68iiQk",
    "4A8BXQviabJAmX51XaXcLN",
    "1Mt6JeVWV9Tvgk8ercp5O9",
    "4uIoOdivSAzUdJB8CTfP8S",
    "34wPpdJXRno0eRFI5IAOYh",
    "0439EWLqkNEatVwyJWb0Go",
    "2TLJwjNaehFY8fMwofdagG",
    "6ULt24uY5oov72S2fY1qoi",
    "5zsw1AANYqHiLeJ9GGHjLP"
  ],
  "1KPZ6yhG9iPOvA9ibzhvNX": [],
  "6MvkFggWB2axNMRTISUOtr": [
    "32RfxfgnltxhcndCpwBf0s",
    "5zwQO1xFFpsrzqASmQ5ZAA",
    "1pKeEa5DomNkzvHQCUkyR3",
    "6lXA7TbwD6ffXivklQbugG",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "5gii2fYcxLoUHWd1lWe4aT",
    "2qA6QJKyk9W627mEn65hob",
    "6Y2Lacqni5uPW6SROD6Jlx",
    "6RlNuHRDeVSq9y9VBzgkw7",
    "0a8lwCnBzG9BkW821GvrmU",
    "05uOsFLijt0mUTxSD7OaLw",
    "5SAeZRhgmJhgq196BR1Mna",
    "73HzrMaQAGRv2nHCiOBlam",
    "3SGdv7Nnxz36kYLYcSWuJf",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "3kww2RwVsla3J0eZyfRLIu",
    "0nPN4LACqiKfOT6eesvsBF",
    "4D56DujhnBViJ4oYCSl1GK",
    "3JY4oF6rBQ45FSVUJtXixb",
    "3GmAEo2lOqrVb7BrHvUS5M"
  ],
  "39L2IfsSnte3Doy2yYyl9j": [
    "6vepcb85fHr2vyTs5i0Vg6",
    "72CwPL4og8AvsbRSGR7u3s",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "5ecl4cSr8UkV7VAgBuQmYh",
    "23vsv4czNaowiMYukchyrN",
    "1ySxWJUZQEG1QwglRo00zZ",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "2gWTlAKGj1i7eGnGKiLIvg",
    "4uIoOdivSAzUdJB8CTfP8S",
    "7mvoz5stIoylExbyhj44KW",
    "4ccdc45cMvHDXkuH0D9fTA",
    "0mldH6GcoYEV145HY3GHEk",
    "2iVbeoHF7eoAzewGxEVRjN",
    "7DS4OrDn7Jnsb4UF38r3MO",
    "5jWSSTdZoJjEjsrlPflz93",
    "5SAeZRhgmJhgq196BR1Mna",
    "5OQpgiuh3jzgADQidpRcTb",
    "4nljcw9ePwIPvq6l42POzM",
    "3HsEpr0lLwltdTesdpkyfC",
    "1aI3fe7Zgy101dUMankLRx"
  ],
  "5b0UnnfFNudJBMFuvit4fT": [
    "0tTthYdfmI1SpY0qF5XFrQ",
    "1GlOpg3dPUft550esb82K3",
    "7jsFxOcVfX7nMwX3JE21kq",
    "235Vf4hkmwvxjVEMuCbRxm",
    "6Z9dlnDMFzj5Y4rNHxGLmR",
    "2ydE5oBt6cwsDxH1TpIFmO",
    "3lwRbCTt1qmo0QgXUai8ao",
    "6UYBKxju4mJ5BiZKSnYD1h",
    "3RLusgrTGjNdnWwNajlq5a",
    "3Z03nCcZBcFUjqinZx3iCF",
    "2Htm0q72SjGSmsy8EOIhRG",
    "5YrBL6QmqRYTvr52b0IOT3",
    "0K59Fm1y7s3j498ueS4qzY",
    "58UPAlQ4MRWEDLhfdP4VcN",
    "0qAthAwwFa3RW6BRRsP4cQ",
    "5gMEZRCMq0gWA3kuCPukEk",
    "60zawKIAJS16ul7OSY91wM",
    "0t8lKcdJV0dEicuocOteOw",
    "2zncEOviiqD90GiRxGqAHG",
    "6Q6qTNC2rAegcR5QjzcRgE"
  ],
  "3lXtbYD0IVuJUKEtqBFcvF": [
    "2qA6QJKyk9W627mEn65hob",
    "5gii2fYcxLoUHWd1lWe4aT",
    "4D56DujhnBViJ4oYCSl1GK",
    "6RlNuHRDeVSq9y9VBzgkw7",
    "3GmAEo2lOqrVb7BrHvUS5M",
    "50G8Md24RBllYioL9BeZ1s",
    "178VA738PauCWm1ZjjSaD2",
    "3No5HqLrMqJbmpJ1nUjUiM",
    "3kNByUYht34hI6ugWqMtCq",
    "3OkzP6mHHksPsxgeamVMB4",
    "2tbBSd1wBSBBuLjpAXB8C2",
    "7B4W35mskl1bpKV8l9WezH",
    "2UTjkMC66uUMZkCmFxgwu9",
    "05uOsFLijt0mUTxSD7OaLw",
    "3SGdv7Nnxz36kYLYcSWuJf",
    "3kww2RwVsla3J0eZyfRLIu",
    "5SAeZRhgmJhgq196BR1Mna",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "2oBu8TfEgCA5KGsSXSqsV3",
    "3QSFLkwEghCeYY042s6uWs"
  ],
  "29ruXKXBILdJvUe4stHvFZ": [
    "0fpNM7LXYad8cqY7X4BWob",
    "3dDTRDJrjdeePlFTkrPQMY",
    "5Q1OwijM196MS3vKi0KQF4",
    "21bd62mxNNHjiXUdZ4Hm0p",
    "2Vx8lflFz4yFbqnk7ccRCg",
    "3ir2eVhKnTWPRKpmEu0QMp",
    "1FEmVBvJ5naZ1qBKeLcoHv",
    "3LGh40MfkSJOb5afEYRI7S",
    "0CTJ7LhsfOFeaHSASmY3MN",
    "1wdGpmIivjJRIFXOgrGPtB",
    "4z8wdICGmcmr9VZnVnL6rK",
    "4Z5SrjmY4TH7OqQhRNfu2Y",
    "7owjuzu3TfCZWHL6wCdKSN",
    "6G9seUYRPyPUHCWKyurZn7",
    "28qWzF1RMBH0ZJrSj20BdZ",
    "6o4xrPkoAchlwK2Rg6I31i",
    "32f4QisjvPTJJKT3weQn7F",
    "2KRUmUbmOXybsu6inukf5C",
    "1RP6w1culo2vykXGaiYdrQ",
    "5ng7euAcsvM8ZHqohw71rf"
  ],
  "47CI3rPwwFOaUBq5HO1WEl": [
    "0aAH7Q5ZlBMpZ1RZUMic2Y",
    "0BVutgpayh84Z50y8GyhaJ",
    "69iWLqJq6ejA24aUZieSZo",
    "3wyBHebXlJYt0eNy55iE1F",
    "1e6sVC6LHNQCgqB8Q2NqsO",
    "2GPr08ScCRbSkb6ToQu74t",
    "0u8FXqe4959sjoLUgQeKJB",
    "5GFa1oIEY4uabHh6L54t8d",
    "4qL4uotxXj9aVOBrjagloc",
    "0SP7yNCfWwHIDCNTPGsN58",
    "3plrXabhYrqokNltku2SuL",
    "4TGsXIntcGStdQyNQCIniQ",
    "7mxxhhh47ttU3SkTMCIMBg",
    "4xbYAR0bEUbNkpG4lSRkzP",
    "1UJLNPqfYGcW8KHxOgPqZj",
    "1QzkpIrrMhBwTa1eb7o9XD",
    "1zRBPElCEJ6YuN9WU7qurw",
    "0xq84BBDX8aOGXSu4rOSaf",
    "31cxtM1T6KnzwJtPogFFPy",
    "5MKgOzGl9pBQ1wgcWL88hJ"
  ],
  "612uwtiluu8mTvdLAEljQh": [
    "5XhkdKBJkaaXKKUdw7kquq",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "01R68b3QwneYjjQOrvtrtJ",
    "1YKOMoSuwYCp5GFDrpX00k",
    "23vsv4czNaowiMYukchyrN",
    "0mldH6GcoYEV145HY3GHEk",
    "3eYDYWVCJJdaGcogTI2s1O",
    "27dKaYrD63Sjj3H8IlGMcV",
    "0QjJV75ipbHTMHOeAUKlwm",
    "7J3PlfvQyxabanXsQQtJf0",
    "0OTIMYNed74COMnzTDR2uK",
    "3JY4oF6rBQ45FSVUJtXixb",
    "2kRyLphTQyz7eaHhfLpMVl",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "5ywH7cLUGzjUHRxK0ymaqZ",
    "73HzrMaQAGRv2nHCiOBlam",
    "4rtxMgmSUuGnQbvf61BDB8",
    "0PEtkVtJ4LN3JrC8EkM6lC",
    "4uIoOdivSAzUdJB8CTfP8S",
    "2iVbeoHF7eoAzewGxEVRjN"
  ],
  "1KPVSiQyrvH7y7QTYDSqLC": [
    "2vWeZdKVNF21EnMaiRbQct",
    "6oneCH0OFyck3gAjFTyDK1",
    "61MAx7qEOF3nonLvS6mxFm",
    "6lpQfHLbVN6VByl14T8Bry",
    "0ZPNyfFvFdGg2PygiJUeAw",
    "2jT2OAaXvgZRau01MSIHyM",
    "5UqwIAuAFBGYeM9dW3e2D8",
    "78GTwoOGB8pub6iMy43fYc",
    "42ipxKQxlTitiX7HS1NQfo",
    "4OS0blMVLxrsZUeeLanLl9",
    "1HgoOuZod8eiyQcMPfltWt",
    "4Y5t1XCXXpViFckIHadvW6",
    "6Z0Cmu4TIqYn3s5iJyLhP2",
    "1ZusNOLTpFY1m6QQiwzxNM",
    "76zuGudqum0CSwVHgoAEDY",
    "3AGvwnXbUo9LoAU2P5qYHB",
    "6j4Div6PjMgf6e2W3DBXYJ",
    "4fQId7SvZ1T10dAmQ7ozxo",
    "3KS5bCzBweiArSZ6Lnavp2",
    "10LLaI6A4jACT6M5ddEEFg"
  ],
  "42MtvWbpLboJmThRItMWSZ": [
    "1G6AdxMaPnYJFHZhBsH2V9",
    "2C52ulJiwKVMxcRrbDqMBa",
    "4nIsOtdwz5360ZrYFbZBLU",
    "5MBqTRWoCgUbct5Mc6T12N",
    "6dTMVeRubUzINO6gmQhWat",
    "0D8yIOlFPxp7OL6n6UzJ38",
    "2G6X03VAY2GJZWtSX86BPj",
    "1qZj5O5enZvggQz2aErDQF",
    "0UUnXcrqFubgsuAwQzcUeS",
    "03r176k09C2PrlNNAbfgG2",
    "5cWTKxIOWibe6xe5gqQHwS",
    "1ilPCPLdwKDEbCPtYJLpWv",
    "65tpzIk1JSEbfzvd7Fyj9T",
    "4mCnOwWBz6JhX5wcZMvsmE",
    "0BXJMW4PTSQlHRj9w2X7JH",
    "74jzN0UGSq2N3a3iE3YFVJ",
    "0Gcgzrheia2zEtiKkZTbzA",
    "3VuiLixhOKGWTG4zPl9NpS",
    "5BBGeFgzbZlaxJB3UNKLWA",
    "5Q9fhYKYkOpeOol1fztIrT"
  ],
  "4TbICkHjrC2B8tMO74P3w4": [
    "4R9RjgarNVvWWb4pjoRhBT",
    "5H5PTrcJrdZxLKlm4PbShh",
    "5NheIeADetHvDkPCVVByqW",
    "1GPjJtmte37sKnqP8dhI6S",
    "3eYDYWVCJJdaGcogTI2s1O",
    "6vepcb85fHr2vyTs5i0Vg6",
    "37u2QUmBNw4I8SYy75mzfn",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "0mldH6GcoYEV145HY3GHEk",
    "4uIoOdivSAzUdJB8CTfP8S",
    "7jsFxOcVfX7nMwX3JE21kq",
    "5oElf4AjSIoZkrpxpl4f9s",
    "0GzXF6aABicwDODNFRNlby",
    "0C89uMlf3cnyUAOmsr2P2y",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "2iVbeoHF7eoAzewGxEVRjN",
    "3QSFLkwEghCeYY042s6uWs",
    "65jGZiPXVWGDlLhnICMfvI",
    "57MNR6CKk1DURSMxF0TO7H",
    "3GmAEo2lOqrVb7BrHvUS5M"
  ],
  "7CZEgK9uHbpW0RdfbWRIQC": [
    "3tgUZG0QVb8CziXQFcNByY",
    "4be8BKksk35Wc8kN7LhLnN",
    "19TslKl8qhtMCbzoujrhv9",
    "2GrKE2j3FFdSw8eAtrZqmq",
    "65IXQZtLc1OfW8H9YxRFwY",
    "5kt7SkycNsq8vbKoFb3QxO",
    "2MvoqSSTigBbfXWoSHGtgj",
    "4LcVOgiAzJlIZJk5gFa4yu",
    "3WoxTj3fh8I58MpnwZyYyL",
    "4MTd9MHb33LFgRKqWG0jZi",
    "6YbPwijYI1KH2v4aPzAORT",
    "19uRMD8ewoSPBCVOkOqhXv",
    "48Idb5uZga8diRAMTc9q3E",
    "5bPCAiEmMvXK12rK6mVh6k",
    "5sDstwiPbl3N81xdnDeKor",
    "0ihNOf1a7gasr1uJD2M4A8",
    "6Qv7PzO62iPNtE9jNTPGDG",
    "1XSVGwcOBIdSrcGp4gRSgL",
    "4rtGF9EsMgFSdpSP2OG53N",
    "2c0g3I65FUsbBQIBQzK50z"
  ],
  "2ApYZSCRExRk3TR9qnENt4": [
    "4W3xWAwohBrT7oe1j7Xq5r",
    "58kqqlurvK50azIC8FBGr2",
    "6b0jcuYkiGjtwHub0AH3FQ",
    "6bW8hQcyh4DW3sGoSohcG0",
    "474704VWtghgra0b3Xru8V",
    "6vCs4rj3rvYAX3l7dEiPq9",
    "3oZa8Xs6IjlIUGLAhVyK4G",
    "7aUCLT7BZleqy2vzNK4rVQ",
    "771qBvjnXOH9Azr6lKy6FB",
    "4lFhWIrUNwiVLf43RmcFER",
    "41pLvk2oM6XBHjqi1JkTXF",
    "2GXWT3OIV4dh7qFOU0PUbS",
    "4463nfFMmK1cwAWBQDwT5e",
    "3BucZwouCkpiGi2UxqfWn9",
    "18xgcedCGxFbqLbIQn5R8F",
    "4PCSnq8Q3hxOTn3ro4cl0M",
    "14cTO4S2dPhz4XuVEMMX3v",
    "1r3bb9hTIXRWwvtYaKzNzP",
    "6dH5I8Q7HhXu74cBXkP0LD",
    "2k3gJEVot5pvtGPu4ZyNic"
  ],
  "49UpIRD1s5bMEhbYYTnqUD": [
    "5MoGn6jc9GHCMiWzccjWRD",
    "1wELOF6Lb5TckxS5EiiQZe",
    "6YbPwijYI1KH2v4aPzAORT",
    "5ohM2ZA35IpUZNIAiK4RoY",
    "1oP7qTxUpqM27hfVCHaGFF",
    "4YlmyiU4Olst2QprHp6kon",
    "3WoxTj3fh8I58MpnwZyYyL",
    "5pD3CakabL59ZP5sX09rcE",
    "2xLKT7jhQNGm4lmivpjc1h",
    "4GrPQiMGutDoHrGq0e4VXR",
    "03COuk5mSMWgxx8z9NlyE2",
    "5v4okqoEFb82y0x5WnJg5i",
    "6po2f29ob2NrxTHXbsSS9i",
    "2ZgRrMPrfyF09AxK77ERBj",
    "0ihNOf1a7gasr1uJD2M4A8",
    "2GrKE2j3FFdSw8eAtrZqmq",
    "1DVzzjpINLQBDKIF4FRPrD",
    "5KrUXDn91WgstKsEaw6j1L",
    "4ia852EduCHBaJeUzjkUHb",
    "6Hngy3cPnHG2DO493ZxSya"
  ],
  "1Fsg1SqM5QShVWZbjjYPx8": [
    "1z8ffq5d8pnMZ9nFi5CF50",
    "5eUycSKfYuSXEwsAY1C9iX",
    "551oaye8liDWB2hAwRDG9R",
    "7tf7JCIxrWhQjHLehA7j8J",
    "74PRWhHltYRe5ui6BGFhfn",
    "6jrXjOgvZxar7qULTgJ9xd",
    "1rRtEbKuoYZZG7QziperNv",
    "5C8CU6di05AFCbWBmMCCeE",
    "5pWJRUbN2mdQO7A21jDM0W",
    "7MNQVx4e7rWCaEW6CpyDGe",
    "6FSzMU05Qaa8p7bTdESuWl",
    "1IdEyhu7jbsFcwnvUrdOad",
    "4arvU6IZ9iiulbCZPiO1GB",
    "3ubn21gVCIaOkzLm5Tegqj",
    "1EsaxlwSz9CLqVRjZYnP3H",
    "53PMMY1sInP2hfK6TzIijL",
    "0bWJRk7RVy4BSt0S8S7fTJ",
    "0d2A861NEFqVpEogrYewVJ",
    "6uLWD7WMJKMyP1DD1eg96R",
    "0y2UIyqXN4KctxsMLgSMhm"
  ],
  "2OL1Rpd8YwI243JOKhC02L": [
    "6YbPwijYI1KH2v4aPzAORT",
    "48Idb5uZga8diRAMTc9q3E",
    "5YDpwWFLxk3wmHBKqAcfiI",
    "3WoxTj3fh8I58MpnwZyYyL",
    "4MTd9MHb33LFgRKqWG0jZi",
    "5X7IiXMVREXSohJkJEwdef",
    "4kyLueNyhG8PKhJagDDOJD",
    "19TslKl8qhtMCbzoujrhv9",
    "6q9n20PmMRLtZc1xCgq0r3",
    "5MoGn6jc9GHCMiWzccjWRD",
    "3KsdiCqV04TOBhPWmk7u90",
    "1FIaDvGsK56jO0K0BUs1iW",
    "0hXFJVIeduP8fbaEmVKlDn",
    "5m0J5lv69wHuzD3Fvb50tn",
    "3IyuxBX0pwXqbeFI4DWmhG",
    "2GrKE2j3FFdSw8eAtrZqmq",
    "3budmcJD4fTyytFVDp5lud",
    "4qZeDZdBD3NiWVbkwX2Lpx",
    "4LcVOgiAzJlIZJk5gFa4yu",
    "65IXQZtLc1OfW8H9YxRFwY"
  ],
  "0XLhfP0Nt0IYLLKqfWjnbb": [
    "2HKVO06HXqGmQxZJ8xIqgr",
    "5titkTztShEPJSoCL9TXF2",
    "20B6eaXUEN0NOvJqdebu7L",
    "0roCoWVCD0Qgr0u15TO3dT",
    "4HQUFZUKjXhvh9rS23DYzG",
    "6AWyFSk8mBekuHeotBV1Jx",
    "6GGVr7WgIWhsnJNdGyPklP",
    "5X8Tt3rIpdy8VR78KEhZ6C",
    "2The4Ur661sLPGndcUuuLu",
    "0grZF2s6ADKiTGwf8EVZEY",
    "2O8QAJmRrwkFXq2aWZnHYB",
    "20v3nhzoeaO2WvDSCdY0f4",
    "4gQEXxzqwNmQwjU0Wc0Ioe",
    "56qkRjq9qsAxK5fc7U5moa",
    "4AL3YviSMI70ARkSOHlxbQ",
    "6dQgfj4Lo9jS2x2vgPkOBK",
    "5uFqO7FceiE84xjEjFtQLX",
    "2vxhgszTmEHgbNJM7Xd3aW",
    "0KMLfCXYb3Dhf1hLpu8cVd",
    "6OQrOpxSIfPai3cFaN4v4P"
  ],
  "4O9CBbbUVZdaJ2iUdDy7yw": [
    "1sUBQ6W6QVd9WmKj08qRnJ",
    "5ldLOkYCjpvyjJ1gpncgRg",
    "72l6wuv5Ic1Lm9yAMayCKx",
    "2Dz5mKciQTuX3nEF2ji5Dz",
    "6W0scfACKEzL0rjk5zbmqG",
    "087usb8nbVFSd9EoOo0Oro",
    "0fv9IpZcT0j7PQDJXxZnBM",
    "3ergzHt1MlXGINS9MrmlBI",
    "5gMEZRCMq0gWA3kuCPukEk",
    "5LHQ1qT7a40nru7posVNxz",
    "0eAHrB38mUABjMOGnhYPW2",
    "32MqW6QPGJov4Vtl2xYs7a",
    "7ioYKICWnu0MBbokQKZcJY",
    "5SnlQFHVbObimMmhsF0x4F",
    "3t7QrmV1guw4lhkmWVh5U9",
    "7vUHOeU5ADsenylCCvlaQV",
    "1nbn5tCrTiPWwDUqhgzMGk",
    "7zV6hW6QOUC0QqqtM14aV4",
    "4QnZ7T0KOxtj4oGOGKl107",
    "1G1eDCwDbEX8SQwhq7fPmJ"
  ],
  "0Ar8n2Mvgie7KTslXgb8lH": [
    "6Dcx7NYlUfqSJZjIjC3Hwk",
    "50BzmPPHNTQjeLW5JvrZJs",
    "6uustyleCEZFSEa11DgHgi",
    "30D3R1VEr9c8imrHOlKJuE",
    "46beGPwcX2QEZcmuvrMqp4",
    "2YoRJiw07U1T5lsPXR2cFT",
    "0gAbrqBahiaTF69TmVb9fQ",
    "7MsupxPkPXAHLRwnGOBohh",
    "4rQT6OE5twoxtzH8mvVMBl",
    "2TKP62ZUCLXH4mnXrGkT03",
    "14KUc7zg3OndrAMbCNxPBD",
    "62ABL5pqowZJin1fkheWo7",
    "3a80F6pRMshHZW2jH8McTA",
    "74tkWjgprwTUFyWLQcSsG2",
    "3EZYBGl6qytwvUPRBVQgOP",
    "45VlRYHy2l5slDXuCB0l1B",
    "2qMnZ26W08LGkJx2WfM6DK",
    "4JFuXBGIYx9U1yu3bzhXOJ",
    "1uhe0qoW3jObTpGFTcIEc7",
    "5UGl3tpHti3d06IXlMoZx2"
  ],
  "4LcVOgiAzJlIZJk5gFa4yu": [
    "1qDCp3SAbWgPeGZJktXZpr",
    "7CZEgK9uHbpW0RdfbWRIQC",
    "19TslKl8qhtMCbzoujrhv9",
    "5TgMcNb1IjEZv0M5wUcLS5",
    "2GrKE2j3FFdSw8eAtrZqmq",
    "6nUq3i1L55uRR2fvmUeYNK",
    "6k9dud58OBaLAtM1xJeDHt",
    "4MTd9MHb33LFgRKqWG0jZi",
    "18OkeBPThq077rJ6d2zgB5",
    "3WoxTj3fh8I58MpnwZyYyL",
    "65IXQZtLc1OfW8H9YxRFwY",
    "6YbPwijYI1KH2v4aPzAORT",
    "48Idb5uZga8diRAMTc9q3E",
    "6q9n20PmMRLtZc1xCgq0r3",
    "5kt7SkycNsq8vbKoFb3QxO",
    "5X7IiXMVREXSohJkJEwdef",
    "46JHFFEjLKbXhMQsU5vSGm",
    "3tgUZG0QVb8CziXQFcNByY",
    "4LoFcBNitqIC130rvzS6BG",
    "1vgXjKtq3hPnEiEM0aLjFK"
  ],
  "2xbIkKN0Yzb14N9WTZWtD2": [
    "0DVbTLzZe781o1S5DD2zmi",
    "2q6X99CH0WLrL5YFJVOhZc",
    "47MUpBHdm08r1oGffNHbFk",
    "09jut908wvFm55SqnO4DN3",
    "57zdSImRVdyfT1Ol0mmlWo",
    "27cHxXCjuCTDj4VO3Ww3Ah",
    "7o6GWu8PprO89hxuS9OiPu",
    "1GC9IVqOiXNuWi7UYgPLgC",
    "1wsio1S9CIIbEuGSYkSAyQ",
    "3juLGrDGl9tPVXCSCdR1RO",
    "643YpbScVr0u07i276NRiP",
    "2ao7Jx5TiinWuCtz6Lig4g",
    "37wvb2slf0x1R2W9xIUsWw",
    "2Y849sV4nlZfLlm8xtjh3z",
    "5nla2wn6EosvcMyFKl1S3O",
    "6NbiEhux3dGIa1Akjqg9Qk",
    "75mIeyYiajAsiAMo735gr7",
    "0d2A861NEFqVpEogrYewVJ",
    "549gX84eSqoYRJp8BglJqy",
    "5mLvRBeI5T7w08iWtK7FXu"
  ],
  "04eoPYzcEUkOi9dyDYYUIk": [
    "4JFuXBGIYx9U1yu3bzhXOJ",
    "0aPjXjbggXuansgeLZH6K5",
    "6Dcx7NYlUfqSJZjIjC3Hwk",
    "0RxLDBrEMpZnQRzE2pjjAa",
    "7eIauucWzVVtyeSlttu7u8",
    "3gCbn6sCiQNy3eVt3jxdyG",
    "2YoRJiw07U1T5lsPXR2cFT",
    "74tkWjgprwTUFyWLQcSsG2",
    "0BFCIOYLyeoLNngW0fbc2t",
    "3GbxpOxaVVbhJwaHLXQOUw",
    "3Ry0Bx0jq7Z6nbzTfcsvkL",
    "46beGPwcX2QEZcmuvrMqp4",
    "62ABL5pqowZJin1fkheWo7",
    "3PyMJko3B04MqtYYjncPRj",
    "2gYJuABHVQEiVkGbPMyyMO",
    "24fJCWxmTHxIvOyYlaSORj",
    "4aASgvga3jSVUpZNz0RFAX",
    "4rQT6OE5twoxtzH8mvVMBl",
    "7MsupxPkPXAHLRwnGOBohh",
    "4wK71LpJUrLYRaUqq4CCuL"
  ],
  "3IprieiPDB9fKuhL75Shhw": [
    "4YujyddKSDZt6gpAesPnEB",
    "4ffrYk2If2Trll9Xz0LzOJ",
    "4NSghdTNqr9Bu1IJ4cerfu",
    "00UwrHRmGcLIbFGVNs0OUG",
    "2fwVdhCix47lMNELign6I1",
    "04P5kEdUJHjng2DzTXhy1C",
    "5U4f1gmVVLf0uhhcg0mJA9",
    "3GjEEA3JmWl9Q2FA8lBh5k",
    "78Myr83Lj29Gyt3FYhXrmX",
    "0vgn3z8TJUy4eS0ti81Xas",
    "2EIDNRLlK40vvt5EyhiwFE",
    "4Ezay1XmEhMN8OwuPR3Iq4",
    "09EcsyJqVbqPZRzwfs1pyc",
    "4dvluAsiAHwKMzkvlMCZvf",
    "5Yvc9iYsNE0RCQHQgjLfP5",
    "5YcTv2UEkzSdBgDUlCHSya",
    "6YsYPnDnM3Lbwt1bJjc8Wb",
    "5QlBlgZQXTj4adeTRqPywe",
    "7hsYXqksbF8TJB89mlXXnl",
    "3WFhwMCDmVICPFzjYKz5b6"
  ],
  "0DQ9JcIWMGVzlQSfCVK4oN": [
    "6dFPl0dM24OeZJe4GHm23O",
    "0fMZgh9eXEgjBq5X9f87NK",
    "2pD2PTwYf1XJQth2hSEmpa",
    "2KSj2QZF42ffJv8uLJk3uU",
    "0Jx0ForzpqevSlX6wl1ABR",
    "68VJJPVAVNAmwsDDf1i70g",
    "6W3jf0DMjNFxW2uyeGzOhJ",
    "2IYfNXFeQLyNhYaU1I0ZiI",
    "2DefJEtso8VshihzHW0gh1",
    "0eLkQvSl3w18O8pRNVRPVY",
    "5d8D0cBjU3uHZgEwSCsGl5",
    "5tJ7jELYPd8ZRIp6dbHS7I",
    "5Pfy8VJ696QAtEf7j2XLK5",
    "4StWYdyiHiVl3cJVixlxPy",
    "40KRSygED5ylJniOSzAqxS",
    "4gDS6GaqnAnBXbTfGR6LhA",
    "0ABvgllZiW792ERHXuJlGz",
    "20FkzGa1heAvwRRxKSMlAX",
    "0BI5vXwUl4lZMtARfXQ0No",
    "5n72qzNEfzCXvNDxKComR7"
  ],
  "6h8PLh7ArvvIG7ZD5g32yu": [
    "5WTJgmKTxGTi6N9KpGH9Yr",
    "2gATcpCSAygc4FqijAOJAt",
    "5f4yA5jDkv5z75thk9ZNTc",
    "66wxdAaC0UG5y6I080pwwP",
    "6jL9RHYQVdls19dJolevxE",
    "2yIsyLOWHx35FfpM9VjeMe",
    "3M7TZ0B7GuHjAb8KqBY968",
    "4gfBMFPSTTJH9ROiY0pJR8",
    "2lVKdYy4JcUzOMy3yuGkdq",
    "2RmgjDpk2Ezmp6kxYwIYnz",
    "72EjMuqnZTIiC91gBxq6dT",
    "0yHYeciq7NWGQR1GqQFqfh",
    "1sitltgqbeACopOvbkiYYg",
    "09jWoqSQvaZrVolNB08Fq2",
    "6DyrupNjarXQX3e45nKAjh",
    "1369kZOp7HpmELLEK0j8Io",
    "4cRp2PVqNXe3AiRebvgFh6",
    "4Vo7jk7sjpIFMk14dedex5",
    "1i5PW46Y7yos0atV1hJ4pd",
    "2w0UxWfkjk7dYlBof0lFp4"
  ],
  "3OkzP6mHHksPsxgeamVMB4": [
    "2qA6QJKyk9W627mEn65hob",
    "6RlNuHRDeVSq9y9VBzgkw7",
    "3lXtbYD0IVuJUKEtqBFcvF",
    "50G8Md24RBllYioL9BeZ1s",
    "3GmAEo2lOqrVb7BrHvUS5M",
    "4D56DujhnBViJ4oYCSl1GK",
    "5gii2fYcxLoUHWd1lWe4aT",
    "3No5HqLrMqJbmpJ1nUjUiM",
    "178VA738PauCWm1ZjjSaD2",
    "3SGdv7Nnxz36kYLYcSWuJf",
    "4uIoOdivSAzUdJB8CTfP8S",
    "5SAeZRhgmJhgq196BR1Mna",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "3kNByUYht34hI6ugWqMtCq",
    "7J3PlfvQyxabanXsQQtJf0",
    "3vsjdss4ZqYIq9u5fD9HPz",
    "1ng0MRoxBZq8WEGEuoXxdq",
    "7B4W35mskl1bpKV8l9WezH",
    "1QeDg5lxB9DDmYpEDeCSqU",
    "3JY4oF6rBQ45FSVUJtXixb"
  ],
  "1xHheWkVnBlDTdIzStgfsz": [
    "2QaMDPtXAtS48No3adgbDI",
    "2vYobZfcvRphBokKOIDRUG",
    "4xbeNFWfjs1HubQ1KMIAAg",
    "2803Kpv7qVYIAyKWfl2RNc",
    "7c8SVvHiXiEY6f3H7M6BcW",
    "0wTashas0gzU0N4bKe7xxY",
    "4PGCodvYkKFR1qPfeDlIPQ",
    "3uwM9VYukvw6muhHQnbKlt",
    "7FQiXsZAbLpWMDyTFk4tkU",
    "07tM2yaTe93690UyzJhl6R",
    "3ZkoshH3VSERSguPAls3v1",
    "4uIoOdivSAzUdJB8CTfP8S",
    "2rxbBcN98aliVXw1DQGE4a",
    "7auZpWzlXPKvPM4lRxzHvY",
    "3F3p5QYtREwN6bnOfRm4Fz",
    "50zr7KSQEzEJZd8d3UtX5L",
    "3tvrpeKqtXlPVauktbi5RC",
    "1qnqcnqHQ3p0x7qbzbJccg",
    "5izHXuiS58sosbKIDrsxIR",
    "4d6yiiKUfZvhXlynmFVbtA"
  ],
  "6SJWkXWEisHoGm8wecsFNs": [
    "0uITrMC16Eg9bbPu0PNfzk",
    "5rxsj8i0O1U0piYDuNasyl",
    "0IOU4qKxjaEKx91Krc3fT5",
    "325zdFw59lq0YHEmd5rWtk",
    "19M8Gfe7Ydw6b8293gtlt7",
    "137pHEZ9U76r4ouXTa6Bjc",
    "4p0y36j62bcbAG6Hl0DjUe",
    "5R8NeeSoWnyXhaUffi1umV",
    "51hDkkivFPXJ8VF0yYur1x",
    "61wjkDrxSXXH1yUOczhJmT",
    "53VBJz2WKg1NYyPwHsN4V9",
    "5NcZIs5gYy4QqBpekyk9aY",
    "3WN801ZTlM5MxIpircGrsO",
    "7v8veUQH2fro2QjkOKS7vB",
    "6Ad4wUgOdnilbCYA3lzt9P",
    "1g31gW7m6FH9LljAfobGh8",
    "4R5IzlNSizG1oT8Gs4HH6k",
    "6yX2GzaudljEEBKfMZpOXE",
    "7hSXBaGwB70P4kBDzqoTT2",
    "75ykMrcaF4136KUIbcxBP7"
  ],
  "6c9FzXhLIBgreWOkqdPPH1": [
    "4c6RPvqSQZ0OwpNEQrgjVL",
    "4SkgNbKOVLiaMQYJlqnK9G",
    "2Dz5mKciQTuX3nEF2ji5Dz",
    "72l6wuv5Ic1Lm9yAMayCKx",
    "1sUBQ6W6QVd9WmKj08qRnJ",
    "0fv9IpZcT0j7PQDJXxZnBM",
    "1Bxv4Zqws38cSo1HzhBau4",
    "32MqW6QPGJov4Vtl2xYs7a",
    "20KMmS1dw5EqsFlBa06NKY",
    "5a87mM9XGeqOcaONlmbIeo",
    "3ergzHt1MlXGINS9MrmlBI",
    "0Sx0MJOnwoFXwLZJDvwAw5",
    "7vUHOeU5ADsenylCCvlaQV",
    "7GXVMEG4H7HAYWFCEoJKls",
    "087usb8nbVFSd9EoOo0Oro",
    "6WS1bmkcKFhDuP4E0IICRJ",
    "7zV6hW6QOUC0QqqtM14aV4",
    "2OPD7QClarBzhBW4zFc9nV",
    "3QIXMZevWo689USpfyIEhS",
    "5gMEZRCMq0gWA3kuCPukEk"
  ],
  "4c6RPvqSQZ0OwpNEQrgjVL": [
    "496JWwedK9Z1nbEKFc6OVz",
    "6c9FzXhLIBgreWOkqdPPH1",
    "4SkgNbKOVLiaMQYJlqnK9G",
    "2Dz5mKciQTuX3nEF2ji5Dz",
    "0fv9IpZcT0j7PQDJXxZnBM",
    "5a87mM9XGeqOcaONlmbIeo",
    "3ergzHt1MlXGINS9MrmlBI",
    "1Bxv4Zqws38cSo1HzhBau4",
    "72l6wuv5Ic1Lm9yAMayCKx",
    "0Sx0MJOnwoFXwLZJDvwAw5",
    "1sUBQ6W6QVd9WmKj08qRnJ",
    "32MqW6QPGJov4Vtl2xYs7a",
    "087usb8nbVFSd9EoOo0Oro",
    "7GXVMEG4H7HAYWFCEoJKls",
    "20KMmS1dw5EqsFlBa06NKY",
    "3QIXMZevWo689USpfyIEhS",
    "7vUHOeU5ADsenylCCvlaQV",
    "7zV6hW6QOUC0QqqtM14aV4",
    "1G1eDCwDbEX8SQwhq7fPmJ",
    "4vkjmv3Qnj3ZsGoIfyZIOq"
  ],
  "0adliEy50Ij86IB3rXlR1m": [
    "7i6g70R96Yz7EHNKB2cPwB",
    "6UyZzEsFCF8B2MBfPZjf23",
    "0oYYVZzEHhUYGBXDkgioyi",
    "4ydhFrOMEIX8q9kIbRY0O2",
    "34wPpdJXRno0eRFI5IAOYh",
    "452YUG0WFp34IRFIUgzSN2",
    "1FOBR3IJ7Qorl811vwzsdt",
    "4kyLueNyhG8PKhJagDDOJD",
    "6q9n20PmMRLtZc1xCgq0r3",
    "5X7IiXMVREXSohJkJEwdef",
    "1sUBQ6W6QVd9WmKj08qRnJ",
    "60zawKIAJS16ul7OSY91wM",
    "7lw1BVWquad5hKtDPU26JG",
    "27kA8TnszsSYSZDikpz0Ra",
    "5ecl4cSr8UkV7VAgBuQmYh",
    "1Mt6JeVWV9Tvgk8ercp5O9",
    "0439EWLqkNEatVwyJWb0Go",
    "4c6RPvqSQZ0OwpNEQrgjVL",
    "1GC9IVqOiXNuWi7UYgPLgC",
    "4b02cKcLB7pHqXYfeGR9iK"
  ],
  "2qnTUTsuypizIuMwVM1ffR": [
    "1xCZcvonWAPlRE2fsy8Y1j",
    "69CBMfMKg8jPd6LR3LOR6f",
    "5Yvc9iYsNE0RCQHQgjLfP5",
    "1hwojP1Bi7ipcn0qFbe8tP",
    "5OFzlWyxyqXupqotQWpUBW",
    "6zp5Bn3c2blXFzutpDLUsQ",
    "6EU6mgrDfDowccl4rd8XMn",
    "6XP86ozgnpENnWaTixIiAw",
    "4whakBc4OoTkwHfjL6wD3r",
    "1sObDTvhRtaW8yjty7sT7H",
    "3TYc7ZGC0521ErIVHq6Vzm",
    "3ElKCwCghvNBPp6f8QITom",
    "0PyKIePrPdDS9FT1pPbm9X",
    "78SvSuyvRN1LIjHpQd1daf",
    "3LIzi17zLwhW3k76I8DXcv",
    "36f2CIEqFhCCBwCe68juJu",
    "0kps7D5aSOND65MD33m9Pd",
    "51yXBBLIlRMDgnXVuDNHmy",
    "4uo92PaMFbm6uMRsO48vBx",
    "1BWqJJLlVyTRaKbyf6bibt"
  ],
  "27dKaYrD63Sjj3H8IlGMcV": [
    "3XliglxGifK0IJjHPxo5MP",
    "6ZkfAoHwFnBg7SKExJ3QJX",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "2kRyLphTQyz7eaHhfLpMVl",
    "5gii2fYcxLoUHWd1lWe4aT",
    "3kww2RwVsla3J0eZyfRLIu",
    "0QjJV75ipbHTMHOeAUKlwm",
    "3HsEpr0lLwltdTesdpkyfC",
    "6ZyOle5O4r39i22AnY19Mk",
    "11PnNvuse5a0xPupBIeHyW",
    "7J3PlfvQyxabanXsQQtJf0",
    "0T9JMk3bDwaXlEjxgmqFBU",
    "4uIoOdivSAzUdJB8CTfP8S",
    "3JY4oF6rBQ45FSVUJtXixb",
    "3wtmjgdgUKVK3tonnKSh9a",
    "0iutktJLkNNtErs8c3EoF6",
    "3d3pm23Qc0Pa9v1mQqTtj2",
    "2UTjkMC66uUMZkCmFxgwu9",
    "0IAWTLWnUIzKVQDTGoYJk2",
    "23vsv4czNaowiMYukchyrN"
  ],
  "6JogLFS7BAeUUE7DBgOOVb": [
    "0qGRkfnUqWeG49vbCv6rMY",
    "4D56DujhnBViJ4oYCSl1GK",
    "6I2DJf8fZwixA0GTLAvR1b",
    "2fw3M3rAz3vA8qBspyBrdf",
    "3JY4oF6rBQ45FSVUJtXixb",
    "5gii2fYcxLoUHWd1lWe4aT",
    "6iqeypk1XRa2zQVRcIVmlF",
    "50G8Md24RBllYioL9BeZ1s",
    "3uy9MpO6gLAW1LHhDRXM38",
    "4uIoOdivSAzUdJB8CTfP8S",
    "2qA6QJKyk9W627mEn65hob",
    "0t8lKcdJV0dEicuocOteOw",
    "0mdD8YXAyJDJ2BHxIKF0Yf",
    "7exkSLWDTlXJYcmBhWp9cl",
    "6RlNuHRDeVSq9y9VBzgkw7",
    "5Uy8OMbe8iXQFXQ3qlaYT5",
    "2dTieljE0C4ydCdUPIPLRW",
    "7h5COfrIA3ZhiqeVWJA0BC",
    "3kNByUYht34hI6ugWqMtCq",
    "0HRRgz3RdNIFJUaeo811Be"
  ],
  "37u2QUmBNw4I8SYy75mzfn": [
    "3kww2RwVsla3J0eZyfRLIu",
    "3JY4oF6rBQ45FSVUJtXixb",
    "5H5PTrcJrdZxLKlm4PbShh",
    "4uIoOdivSAzUdJB8CTfP8S",
    "3QSFLkwEghCeYY042s6uWs",
    "2UTjkMC66uUMZkCmFxgwu9",
    "793ACUr9nbTLP7KZUddXzU",
    "23vsv4czNaowiMYukchyrN",
    "65jGZiPXVWGDlLhnICMfvI",
    "2kRyLphTQyz7eaHhfLpMVl",
    "5gii2fYcxLoUHWd1lWe4aT",
    "0IAWTLWnUIzKVQDTGoYJk2",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "6SgxxKwvGosbX2WvlVyCmm",
    "3GmAEo2lOqrVb7BrHvUS5M",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "7exkSLWDTlXJYcmBhWp9cl",
    "4D56DujhnBViJ4oYCSl1GK",
    "5z7054rmpJ05mohSsOE0sM",
    "50G8Md24RBllYioL9BeZ1s"
  ],
  "3juLGrDGl9tPVXCSCdR1RO": [
    "75mIeyYiajAsiAMo735gr7",
    "643YpbScVr0u07i276NRiP",
    "57zdSImRVdyfT1Ol0mmlWo",
    "7Ij3qRinMFtEpzRghKIHtE",
    "549gX84eSqoYRJp8BglJqy",
    "2q6X99CH0WLrL5YFJVOhZc",
    "4Dmr792ZlPkJJsHbSMJatK",
    "25CQYerNOaucOLHuEuvC9P",
    "7BxGo6C3TLVWkQhBso7ERD",
    "0d2A861NEFqVpEogrYewVJ",
    "64wQFQbkd9AT527hkNxojy",
    "5iKGxHg1kmnS3GOxuPsTKj",
    "4IanZQUfK3CD5hhIOvq3HU",
    "4OeXcGvSUYN3eMgy73WBtd",
    "5jKPFZDOdSKFeRN5HRQGGx",
    "1CPCudqABxMYzF2PFEfQme",
    "0LOfrH82HIHcCXk3eFF7og",
    "5U4f1gmVVLf0uhhcg0mJA9",
    "09jut908wvFm55SqnO4DN3",
    "2t5LZnlhZW4ctjLQE9qoae"
  ],
  "01FkCqvSAE5mBeTz5QQsx3": [
    "41t0VtTsJW8JzLYN7e7Uig",
    "4fARNbsdisPYTZtwYzAayh",
    "05cQ4J83ahsdeFX7sgqTpH",
    "7B3kLf1ZWaepQ3ts6Adlkp",
    "325zdFw59lq0YHEmd5rWtk",
    "0uITrMC16Eg9bbPu0PNfzk",
    "7wj7mzfPsDlJjUyg2TIW1n",
    "19M8Gfe7Ydw6b8293gtlt7",
    "4waUZg7jQgyZE9odZgglJy",
    "5kmcANJ07GntkrPxTW8PnW",
    "2e4Y8l04wLXmQhffiFOV0Z",
    "1WfpH53VReC5lgeuKaT91T",
    "4Frz1l5pFsgAYeUhAskAcZ",
    "3WFhwMCDmVICPFzjYKz5b6",
    "4MZwXbwveoO6NyBAZPbYZv",
    "4Dmr792ZlPkJJsHbSMJatK",
    "62mDOaYHDbAyK1clFPQyuN",
    "25CQYerNOaucOLHuEuvC9P",
    "4pPaTS0Is7K9pHjgp5Pdgs",
    "5U4f1gmVVLf0uhhcg0mJA9"
  ],
  "4aCWTRWrh5lyIaZTVCP6ja": [
    "2GOgGMMJooNV8Yk2PjvzAa",
    "0R0FEEepfDr3js3lsGPykq",
    "7mLqJ7bAtpOjB8yRVlY2vx",
    "7aFWI1ooewKlAlMparvoab",
    "3MBsvBr8B6mfjO6txfT6uL",
    "2SLxeHyq7LPXJOONrUqyvY",
    "7K0Q9SUKzxWgefD9qSch6S",
    "7B9pJzrDTdS1HCnuNQklaU",
    "0vcCoE3Jm10hYFaeCrWpdH",
    "5U6szD10l8yZeyPl88mAUg",
    "2fkbcrv0tNgxkzT0wvivRN",
    "6wZ4LbABRtuXP5xpQilUyQ",
    "73UaCOx7zJtZ8HlEjTnb0Z",
    "09Z8ZKx0g9HCsO9BiaYMwM",
    "4HgUPVt7LhvdpUbZhmotgx",
    "4gHjWV2oalYMkHYfBCt3Lr",
    "1pB7DnYxsE4QaV9rI6VMwc",
    "13sN20Fe1isPXTYSsL7AX5",
    "6h5MmyLSbAMkjZPjbKFqE3",
    "4jyw0sF3Ji2vZ74ZZIWYBz"
  ],
  "6po2f29ob2NrxTHXbsSS9i": [
    "3DnlTB4No4W6fO6Qvghnm4",
    "5rLsN2LxYaEPLa1N7I2mPB",
    "4KzLzaLD6kJcOElGcQplR5",
    "74rb5haBUzWWe7v8MQbZwS",
    "2TAxxFXMVMQ77Hve5fTzUt",
    "1XyuukWY5u4rpSQynQ5Kgv",
    "1wELOF6Lb5TckxS5EiiQZe",
    "048Ps9xL1nU6dsliRDJi3y",
    "5ohM2ZA35IpUZNIAiK4RoY",
    "3F4LyTOlwym0YQmYBlbAAf",
    "3fSY3Q7ElfLbI1cR3RyOXd",
    "79KyjLxTR5a6vVpPvljowB",
    "59zFIrLQf6ht2Edo0BarLn",
    "2IepsVr1DGAWIy15lh6sxC",
    "0mARcA4ibtJXGnWhEJa9Z0",
    "4H1MDie4DNcC292GeGPoZ8",
    "28DInKJA1f9LhVK1LqMaHW",
    "2VK9T8hGs9nEseJ1UaTAKS",
    "1B77gQZWI3khQYI19R9YUE",
    "1JwKBAe8O6J3z8knUBBIM1"
  ],
  "34eYFWakij77TEwhJNTklb": [
    "0n1v9dpRKx4ZkK5ZA2Xie7",
    "3iLCCeNAXHyyNNdZTBXd4y",
    "2qMYZt6h1KkH2OxwI2tOo6",
    "3ODXyvbseDVCP7dpWoZanS",
    "6JXZNTeMU9JK8JKmArJU2a",
    "0nW4oG8PsIQGl39boP59pe",
    "1WXAndtMSMymA6qMXyvoXV",
    "5SN0hsfwTuMP49GwxuVmjO",
    "0dKDTAHpezj1V1WSimvBJh",
    "0CFMR3ZXAZ591sp0z2Hwjp",
    "5xtqLPSp5RbT6YZEclAiCJ",
    "6UYYp6Xo2NHP7AxNnR0rn4",
    "5fVtUielMhdztOA34ArB6c",
    "6UAMLsapd2AyfEAEVFaxmc",
    "5V3p1FHktSmZSGyfvSGdhY",
    "6U5QPaU2JpWfzInyd2g9zg",
    "4K8Mrjr9IvA8QU0Vjj4BED",
    "2RVhAjf6JBMPZaIiD39UZm",
    "7E0i3aKAcm8iGK15QePkog",
    "5AQlQBU9LCmQwReukeom2I"
  ],
  "4YujyddKSDZt6gpAesPnEB": [
    "09EcsyJqVbqPZRzwfs1pyc",
    "2EIDNRLlK40vvt5EyhiwFE",
    "4ArkxyeBPg8alE9CcBf86X",
    "5Yvc9iYsNE0RCQHQgjLfP5",
    "6xuqRCyuv5XGpNgC74ynim",
    "4Dmr792ZlPkJJsHbSMJatK",
    "6uLWD7WMJKMyP1DD1eg96R",
    "5OFzlWyxyqXupqotQWpUBW",
    "5U4f1gmVVLf0uhhcg0mJA9",
    "0RmkqU1ECvcq92AA7tAKzf",
    "29pcx06vJhKloH7xrkxN8I",
    "6347vDZC2ePPFCm1zSrhFe",
    "7xEiX76imldiwL3joKgoAm",
    "68mkWeq03e98dvIEI0jr0N",
    "0d2A861NEFqVpEogrYewVJ",
    "7Ij3qRinMFtEpzRghKIHtE",
    "3zkbEQouXdzjcD4cxoFuO9",
    "3NSJOyQdSXncJloHqhwlQB",
    "2t5LZnlhZW4ctjLQE9qoae",
    "1hwojP1Bi7ipcn0qFbe8tP"
  ],
  "5SAeZRhgmJhgq196BR1Mna": [
    "1ng0MRoxBZq8WEGEuoXxdq",
    "2qA6QJKyk9W627mEn65hob",
    "6RlNuHRDeVSq9y9VBzgkw7",
    "3JY4oF6rBQ45FSVUJtXixb",
    "5gii2fYcxLoUHWd1lWe4aT",
    "23vsv4czNaowiMYukchyrN",
    "4D56DujhnBViJ4oYCSl1GK",
    "4WUhFcGCQ7PheEvLvEnOdX",
    "3SGdv7Nnxz36kYLYcSWuJf",
    "3kww2RwVsla3J0eZyfRLIu",
    "4uIoOdivSAzUdJB8CTfP8S",
    "3No5HqLrMqJbmpJ1nUjUiM",
    "0JrdEHsuwvc3ZWUVSCxrC8",
    "7B4W35mskl1bpKV8l9WezH",
    "2iVbeoHF7eoAzewGxEVRjN",
    "0QjJV75ipbHTMHOeAUKlwm",
    "4GN1eZnMxHLMX8a7sBBbFc",
    "3GmAEo2lOqrVb7BrHvUS5M",
    "2kRyLphTQyz7eaHhfLpMVl",
    "6RLQ5qFAM12mDXWoFw9LjD"
  ],
  "26Omu9H1XR7cBoEYrMD9gF": [
    "0Q7HmY08qjZ6SrCb9DYji7",
    "5m0J5lv69wHuzD3Fvb50tn",
    "1sTOtMflHQ1ULtuozST5RR",
    "59dLJG3ZVwkMZLFKByQCJB",
    "6CrQKZeuSKNYgrE7PeYqJ1",
    "7F5m9Jw4sg853wTDmmJvLi",
    "6byQKddO1b34lXC2ZEjehQ",
    "3WxVICwFDAWMTWH8sELmRe",
    "28DInKJA1f9LhVK1LqMaHW",
    "1Qv4E1VgZOGnOYd99Kp5Bs",
    "55j4xUfI5AATqETp8AnrRp",
    "5fVtUielMhdztOA34ArB6c",
    "6ZIgPKHzpcswB8zh7sRIhx",
    "10vtHOCA3qPLmrGylgO2F1",
    "3jO7X5KupvwmWTHGtHgcgo",
    "7KTtecVDKYpIseUdqdNDpd",
    "7wTu5u7W3kc9Id5JAvSAFV",
    "53Ik4pv6iE2gZ7Xc4BKlFJ",
    "3DnlTB4No4W6fO6Qvghnm4",
    "5R6YR0pasdxlynyq0Abq7x"
  ],
  "05aqPZGak6jQkKZHoXkO8E": [
    "5NheIeADetHvDkPCVVByqW",
    "4R9RjgarNVvWWb4pjoRhBT",
    "5oElf4AjSIoZkrpxpl4f9s",
    "1glVxWkKaFiPQoSFvxj7Ar",
    "5vcSyrLefC4JNXFXJOq5FM",
    "6lYzmne5qvXUmlpmk4i28X",
    "5H5PTrcJrdZxLKlm4PbShh",
    "0C89uMlf3cnyUAOmsr2P2y",
    "3IRswOriYuarqJwPa5SYsy",
    "6he00mUdj3UDbUpUBXdHfD",
    "3QSFLkwEghCeYY042s6uWs",
    "1RFwvEWFx12Xrf2IXHs9l7",
    "2B5zTVhZMD31zIf8BeEk0Y",
    "7va6FT607YxAj4HtoXVEIh",
    "4TbICkHjrC2B8tMO74P3w4",
    "37u2QUmBNw4I8SYy75mzfn",
    "1QZmRXrpGb9JBeDPL3zT2j",
    "1hwojP1Bi7ipcn0qFbe8tP",
    "6vepcb85fHr2vyTs5i0Vg6",
    "7exkSLWDTlXJYcmBhWp9cl"
  ],
  "1CL1NnuyndaL52YgyPVL73": [
    "4EkrhlCS2DbFxvC3Uhq6p2",
    "1Abg5u0GFm9k3jst9mw4gH",
    "46cEeRi8p3fkd1hN0N820b",
    "6j6Ld5h0aFgH0VQWQNazS7",
    "7angJhk6prgArU70JNtgTT",
    "17SdOua747pMkSrZFYlr2L",
    "59dLJG3ZVwkMZLFKByQCJB",
    "3e10QpiUTMOykbAe9AAkbn",
    "2E0SVBO1NkyVTl7PDmGGw4",
    "6qYd7xlmeeeDkPfx6mZ9PV",
    "5rI6C5mJm6GYXbGHhpHTu9",
    "0bI566gNqVLuVAra7TXQp9",
    "5sASmkskUJsvYDSYKRkkYd",
    "3DnlTB4No4W6fO6Qvghnm4",
    "3IyuxBX0pwXqbeFI4DWmhG",
    "5V3p1FHktSmZSGyfvSGdhY",
    "7EfP8YWf8PS23uPdAxa4sU",
    "74x9mLFwykSABaRCLE58Yg",
    "7czgdE1A5cjIIp5J4qtANj",
    "7FGAi3mSjLMsq6p8SErsTA"
  ],
  "3UmO1Acb6OVGSfiLnYe69n": [
    "048Ps9xL1nU6dsliRDJi3y",
    "1DixLsLZShfpRGCavAekSZ",
    "7nbOE0RhCrS1GrDEaVUVee",
    "1D0ySGoUXYWdUNDZWs2vKl",
    "4KzLzaLD6kJcOElGcQplR5",
    "5ohM2ZA35IpUZNIAiK4RoY",
    "74rb5haBUzWWe7v8MQbZwS",
    "5CyGExgiIO5AfElXLtoU7r",
    "3Ib6KIEhkT9Funk4mqF4Lh",
    "2VLQDfdzVswx2x3BNYwfcS",
    "1KYLoFQ7Cwm4eOHruB5OMI",
    "4JZdNNzzAhW7Ag2Vl1bZrw",
    "5DboBy35CJ1kezDm1ebqbC",
    "1XyuukWY5u4rpSQynQ5Kgv",
    "4nwFiHgPXUpo0KgR1rZSAD",
    "400gx7Z9pAb93eYYQZ2fUN",
    "5xEgsOYkENDU9TRoKMWW3u",
    "3j7kmtxJ0aptdHr9ZCnEkp",
    "0G0wjvWRWLREOBLLE1JcOQ",
    "6dpGJKjrEet5TfcNTn2lZZ"
  ],
  "1wELOF6Lb5TckxS5EiiQZe": [
    "3DnlTB4No4W6fO6Qvghnm4",
    "6po2f29ob2NrxTHXbsSS9i",
    "10vtHOCA3qPLmrGylgO2F1",
    "28DInKJA1f9LhVK1LqMaHW",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "6Yq25ZvjgSUB87OgyeuEPa",
    "47fpeEBmobi7jkLjy4Kf0p",
    "5ohM2ZA35IpUZNIAiK4RoY",
    "3F4LyTOlwym0YQmYBlbAAf",
    "2IepsVr1DGAWIy15lh6sxC",
    "74rb5haBUzWWe7v8MQbZwS",
    "3WxVICwFDAWMTWH8sELmRe",
    "7F5m9Jw4sg853wTDmmJvLi",
    "59dLJG3ZVwkMZLFKByQCJB",
    "5m0J5lv69wHuzD3Fvb50tn",
    "01wwxIe4Qgb0a4PCfzBjsf",
    "1sTOtMflHQ1ULtuozST5RR",
    "00demsNI1p5KmzWGlrnrdh",
    "1oP7qTxUpqM27hfVCHaGFF",
    "2TAxxFXMVMQ77Hve5fTzUt"
  ],
  "28DInKJA1f9LhVK1LqMaHW": [
    "3DnlTB4No4W6fO6Qvghnm4",
    "5m0J5lv69wHuzD3Fvb50tn",
    "6Yq25ZvjgSUB87OgyeuEPa",
    "0Q7HmY08qjZ6SrCb9DYji7",
    "1wELOF6Lb5TckxS5EiiQZe",
    "1Qv4E1VgZOGnOYd99Kp5Bs",
    "26Omu9H1XR7cBoEYrMD9gF",
    "7F5m9Jw4sg853wTDmmJvLi",
    "10vtHOCA3qPLmrGylgO2F1",
    "1sTOtMflHQ1ULtuozST5RR",
    "59dLJG3ZVwkMZLFKByQCJB",
    "1B77gQZWI3khQYI19R9YUE",
    "3WxVICwFDAWMTWH8sELmRe",
    "0CFMR3ZXAZ591sp0z2Hwjp",
    "3q1NXsv9XypOUCJfEatXH9",
    "6po2f29ob2NrxTHXbsSS9i",
    "3cG8AMyTTUk3Y6LIqyjOxc",
    "5fVtUielMhdztOA34ArB6c",
    "6ZIgPKHzpcswB8zh7sRIhx",
    "7pa4Z64S1qU90QytnRJgoJ"
  ],
  "51NO7YnhSgC02dyIi7QaBp": [],
  "5jKPFZDOdSKFeRN5HRQGGx": [
    "75mIeyYiajAsiAMo735gr7",
    "549gX84eSqoYRJp8BglJqy",
    "7Ij3qRinMFtEpzRghKIHtE",
    "4IanZQUfK3CD5hhIOvq3HU",
    "3OrjkcpKAlJClVOopBZicQ",
    "3WbSY8mvIDlippmEINi72J",
    "643YpbScVr0u07i276NRiP",
    "25CQYerNOaucOLHuEuvC9P",
    "7BxGo6C3TLVWkQhBso7ERD",
    "1CPCudqABxMYzF2PFEfQme",
    "5iKGxHg1kmnS3GOxuPsTKj",
    "0LOfrH82HIHcCXk3eFF7og",
    "0lLZuPpTtNi5DxZ9QhiReO",
    "4OeXcGvSUYN3eMgy73WBtd",
    "2t5LZnlhZW4ctjLQE9qoae",
    "3OSozwQXzKD9PY3M4hfkEW",
    "6wAk3K9nxqR0pTLGLctzQu",
    "0iEb0AxgIKdFEBge2F0hSr",
    "4S4LqO1F7ZHz2ipQsSJwn2",
    "1JBqDQ2nqzGdgOEv7f4Gev"
  ],
  "0rLocKMoxKHy5NB9lHuWPO": [],
  "5gsO56QyXQBJXyI1YAHtEl": [],
  "1p9IEVolgFCEjlFwEGTjPG": [
    "6uJE0vxnT7UNCgBHOCZ7WV",
    "4jIPjVHNkAKmqfWjfwg960",
    "33jFO9W9LzOFYLwdPcs97O",
    "2a3t7z8U1cpR0PEq1WB68d",
    "48vP5SxlTO6yOI7SLKIOQV",
    "1U7FXZ7fdz0YqYzs4nRd1v",
    "4StQh17zinsbJ4r5ekmPj7",
    "6Gsh7oJoJ5EQUuQk0EhfWL",
    "62zZb3lpCFBqLDjMccQgND",
    "0Hkx0YcHHxDRRbH9WsSW0I",
    "38PVRkX8RixC7XuDRltJpN",
    "1cLDC1abeY1jIY5AX2Rtbx",
    "5c1dsiPU62AjA50VwTPfoF",
    "5aJWEc5r4loyrMRAXgPxsh",
    "4Ohr1XPB2qzNiiWRJlelPO",
    "15RLdM61VHtknTIYIuNviR",
    "0UgMoItq2HrVT6sRUF9ouY",
    "46tb2ZXhiEO0R42JLK1Qzr",
    "6ulI4i1iXCyvXZPepDMIPg",
    "2TUXDsXCXDnpVEZ3lvyVWF"
  ],
  "5FWTu1MZdB5fjKif2rZldJ": [
    "5L59UhTBOeIRPxF5umwC9p",
    "0lsuCH8qG9UM8BihdL1Vsc",
    "6UL7BodGc5iVmQGlMwHR0g",
    "2Y06xyHPovQ8DWLyVIpSJK",
    "1AMMMSq3rJdZtFGnBXEkz7",
    "5keeQyPKYRxUCKDMECTXG3",
    "1TsG4AumsMt1Tcq2nHpov9",
    "3hbnUwHvxyFxeJ9veCzOE7",
    "6qaKS0nzGP4hfjl4aFZmEU",
    "6uSKeCyQEhvPC2NODgiqFE",
    "389zc5Rwe0MPcE6mSF4AjC",
    "6RTCb5pWKinqlUyG2qacit",
    "1edl5fzpdS471TaQ8Bgs3w",
    "5WwEQwX3ruZofwDDqtOXwI",
    "0nGxKkhmIzyu6bvuXrko1e",
    "6jJG408jz8VayohX86nuTt",
    "3L5iYAziSDnuaHsSgbkcIP",
    "4DbtUTi2WsBNdruAZL2pNz",
    "1vB5909auE9YUaTjQ7ZkTj",
    "3OuWnJjdra0xHsdtB3HIHj"
  ],
  "4fARNbsdisPYTZtwYzAayh": [
    "41t0VtTsJW8JzLYN7e7Uig",
    "05cQ4J83ahsdeFX7sgqTpH",
    "01FkCqvSAE5mBeTz5QQsx3",
    "7B3kLf1ZWaepQ3ts6Adlkp",
    "7wj7mzfPsDlJjUyg2TIW1n",
    "325zdFw59lq0YHEmd5rWtk",
    "5kmcANJ07GntkrPxTW8PnW",
    "62mDOaYHDbAyK1clFPQyuN",
    "4EAV5xJot3hs1RICAsxSHA",
    "4Frz1l5pFsgAYeUhAskAcZ",
    "1g31gW7m6FH9LljAfobGh8",
    "4R5IzlNSizG1oT8Gs4HH6k",
    "4waUZg7jQgyZE9odZgglJy",
    "2e4Y8l04wLXmQhffiFOV0Z",
    "4MZwXbwveoO6NyBAZPbYZv",
    "19M8Gfe7Ydw6b8293gtlt7",
    "25CQYerNOaucOLHuEuvC9P",
    "4pPaTS0Is7K9pHjgp5Pdgs",
    "3IbAQiPGvV3aSwvYBMo3o3",
    "3OrjkcpKAlJClVOopBZicQ"
  ],
  "0bWJRk7RVy4BSt0S8S7fTJ": [
    "1FGK9x2fh4SkpKyL4keggY",
    "0Ju8LutOzYuBpC3XtwcLZa",
    "5VqFyx1HDLsbf0bAK0K7Oa",
    "5Gc3h7r4iV94WZYozevgYT",
    "7e3BSeFzlCGyAdbsUbgUaD",
    "4nqVB7spWeLRAeXDLfEpWT",
    "5B8x8r9gHNj8pVqc8sWQyW",
    "7tqwTqZQXmwtlvj4WdsGUe",
    "1pmmkE3BIdh9pxHecU09Oo",
    "7fxj9VjDxGpHfOPEkgxm6e",
    "4arvU6IZ9iiulbCZPiO1GB",
    "0d2A861NEFqVpEogrYewVJ",
    "0ew3nDz7LGfYAju7CC2tL3",
    "53PMMY1sInP2hfK6TzIijL",
    "2irvIOnNBtm2lPHz9PyUVh",
    "1EsaxlwSz9CLqVRjZYnP3H",
    "7EvDSfxicwLE0JCefqIFiX",
    "3y7lYHC5lU1TliTtH9iudU",
    "2UqRkW2wfEkZmyvKyTTv2W",
    "6zuShqSKzYP7ZPGMkMFhbL"
  ],
  "4arvU6IZ9iiulbCZPiO1GB": [
    "7e3BSeFzlCGyAdbsUbgUaD",
    "1FGK9x2fh4SkpKyL4keggY",
    "0Ju8LutOzYuBpC3XtwcLZa",
    "0bWJRk7RVy4BSt0S8S7fTJ",
    "0d2A861NEFqVpEogrYewVJ",
    "7tqwTqZQXmwtlvj4WdsGUe",
    "1pmmkE3BIdh9pxHecU09Oo",
    "53PMMY1sInP2hfK6TzIijL",
    "5VqFyx1HDLsbf0bAK0K7Oa",
    "1EsaxlwSz9CLqVRjZYnP3H",
    "2UqRkW2wfEkZmyvKyTTv2W",
    "1ga5jO5WHSc52U7aLHjgMu",
    "09uueXvOHlHbzABqbbYbwT",
    "7fxj9VjDxGpHfOPEkgxm6e",
    "5B8x8r9gHNj8pVqc8sWQyW",
    "5Gc3h7r4iV94WZYozevgYT",
    "7EvDSfxicwLE0JCefqIFiX",
    "4nqVB7spWeLRAeXDLfEpWT",
    "3ubn21gVCIaOkzLm5Tegqj",
    "2irvIOnNBtm2lPHz9PyUVh"
  ],
  "7czgdE1A5cjIIp5J4qtANj": [
    "42Di2Go36YpffdvrOySpWW",
    "7angJhk6prgArU70JNtgTT"
  ]
}';
DELIMITER //

CREATE FUNCTION JSON_ARRAY_COALESCE(json_array JSON) 
RETURNS JSON
DETERMINISTIC
BEGIN
    IF json_array IS NULL THEN
        RETURN JSON_ARRAY();
    ELSE
        RETURN json_array;
    END IF;
END //

DELIMITER ;

-- Populate table artistrecommendations
INSERT INTO ArtistRecommendations (ArtistID, RecommendedArtists, RecommendationCount)
SELECT 
    artist_id,
    COALESCE(JSON_EXTRACT(@json, CONCAT('$."', artist_id, '"')), JSON_ARRAY()) AS RecommendedArtists,
    JSON_LENGTH(COALESCE(JSON_EXTRACT(@json, CONCAT('$."', artist_id, '"')), JSON_ARRAY())) AS RecommendationCount
FROM 
    JSON_TABLE(JSON_KEYS(@json), '$[*]' COLUMNS (artist_id VARCHAR(50) PATH '$')) AS jt;

-- Verify the inserted data
SELECT * FROM ArtistRecommendations;
-- -------------------------------------------------------------------------------------------------------------------------------------------

-- Now import from csv files: tracks and artists 
CREATE TABLE tracks (
    id VARCHAR(255),
    name VARCHAR(255),
    popularity INT,
    duration_ms INT,
    explicit TINYINT,
    artists VARCHAR(500), 
    id_artists VARCHAR(500),  
    release_date DATE,
    danceability FLOAT,
    energy FLOAT,
    `key` INT,
    loudness FLOAT,
    mode TINYINT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    time_signature INT);

FLUSH PRIVILEGES;
SHOW VARIABLES LIKE 'secure_file_priv';

DESCRIBE tracks;


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tracks_cleaned.csv'
INTO TABLE tracks
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, name, @popularity, @duration_ms, @explicit, artists, id_artists, @release_date,
 @danceability, @energy, @key, @loudness, @mode, @speechiness, @acousticness,
 @instrumentalness, @liveness, @valence, @tempo, @time_signature)
SET
  popularity = CASE WHEN @popularity REGEXP '^[0-9]+$' THEN @popularity ELSE NULL END,
  duration_ms = CASE WHEN @duration_ms REGEXP '^[0-9]+$' THEN @duration_ms ELSE NULL END,
  explicit = CASE WHEN @explicit IN ('0', '1') THEN @explicit ELSE NULL END,
  danceability = CASE WHEN @danceability REGEXP '^[0-9]+(.[0-9]+)?$' THEN @danceability ELSE NULL END,
  energy = CASE WHEN @energy REGEXP '^[0-9]+(.[0-9]+)?$' THEN @energy ELSE NULL END,
  `key` = CASE WHEN @key REGEXP '^[0-9]+$' THEN @key ELSE NULL END,
  loudness = CASE WHEN @loudness REGEXP '^-?[0-9]+(.[0-9]+)?$' THEN @loudness ELSE NULL END,
  mode = CASE WHEN @mode IN ('0', '1') THEN @mode ELSE NULL END,
  speechiness = CASE WHEN @speechiness REGEXP '^[0-9]+(.[0-9]+)?$' THEN @speechiness ELSE NULL END,
  acousticness = CASE WHEN @acousticness REGEXP '^[0-9]+(.[0-9]+)?$' THEN @acousticness ELSE NULL END,
  instrumentalness = CASE WHEN @instrumentalness REGEXP '^[0-9]+(.[0-9]+)?$' THEN @instrumentalness ELSE NULL END,
  liveness = CASE WHEN @liveness REGEXP '^[0-9]+(.[0-9]+)?$' THEN @liveness ELSE NULL END,
  valence = CASE WHEN @valence REGEXP '^[0-9]+(.[0-9]+)?$' THEN @valence ELSE NULL END,
  tempo = CASE WHEN @tempo REGEXP '^[0-9]+(.[0-9]+)?$' THEN @tempo ELSE NULL END,
  time_signature = CASE WHEN @time_signature REGEXP '^[0-9]+$' THEN @time_signature ELSE NULL END;
  
  -- -------------------------------------------------------------------------------------------------------------------------------------------------
  
  -- now import data from artists csv 
CREATE TABLE artists4(
    id VARCHAR(255) NOT NULL,
    followers INT,
    genres Varchar(5000),
    name VARCHAR(255),
    popularity INT,
    PRIMARY KEY (id));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/artists_cleaned.csv'
INTO TABLE artists4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, @followers, genres, name, @popularity)
SET
    followers = CASE 
        WHEN @followers REGEXP '^[0-9]+$' THEN @followers
        ELSE NULL
    END,
    popularity = CASE 
        WHEN @popularity REGEXP '^[0-9]+$' THEN @popularity
        ELSE NULL
    END;
    
select * from spotify.artists4 
Limit 0, 10000;
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- 1. Identifying Dimensional and Fact Tables:
-- Dimensional Tables:
-- artists (dim_artists)
-- tracks (dim_tracks)
-- Fact Table:
-- artists recommendations (fact_artist_recommendations)
-- The `dim_artists` table is a dimension table that stores descriptive information about each artist.
-- It provides context for analysis and allows grouping, filtering, or categorizing of data.
-- CREATE TABLE dim_artists (
--    artist_id INT PRIMARY KEY,            -- Unique identifier for each artist (surrogate key).
--    artist_name VARCHAR(255),             -- Name of the artist (descriptive attribute).
--    followers INT,                        -- Number of followers (numerical attribute describing popularity).
--    genres JSON,                          -- Genres the artist belongs to, stored in JSON format (multi-valued attribute).
--    popularity INT                        -- Artist's popularity, typically a number between 0 and 100 (descriptive attribute).
-- );

-- The `dim_tracks` table is another dimension table, storing descriptive information about tracks.
-- This provides context for analyzing tracks and their relationship with artists and albums.
-- CREATE TABLE dim_tracks (
--    track_id INT PRIMARY KEY,             -- Unique identifier for each track (surrogate key).
--    track_name VARCHAR(255),              -- Name of the track (descriptive attribute).
--    artist_id INT,                        -- Foreign key referencing the artist who created the track.
--    album_name VARCHAR(255),              -- The name of the album the track belongs to (descriptive attribute).
--    duration_ms INT,                      -- Track duration in milliseconds (numerical attribute).
--    release_date DATE,                    -- The release date of the track (temporal attribute).
--    popularity INT,                       -- Track's popularity, typically a number between 0 and 100 (numerical attribute).
--    FOREIGN KEY (artist_id) REFERENCES dim_artists(artist_id)  -- Relationship with the `dim_artists` table.
-- );
-- The `fact_artist_recommendations` table is a fact table.
-- Fact tables store measurable or quantitative data. This table captures the relationship between artists based on recommendations.
-- Each row represents a recommendation of one artist to another and includes relevant metrics and foreign keys.
-- CREATE TABLE fact_artist_recommendations (
--    recommendation_key INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for each recommendation (surrogate key).
    
--    artist_id INT,                        -- Foreign key referencing the artist being recommended (links to `dim_artists`).
--    recommended_artist_id INT,            -- Foreign key referencing the recommended artist (links to `dim_artists`).

--    valid_from DATETIME,                  -- When this recommendation became valid (temporal attribute).
--    valid_to DATETIME,                    -- When this recommendation expired (temporal attribute). Null means it’s still active.
--    is_current BOOLEAN,                   -- Indicates if this recommendation is the current one (true for active, false for historical).

--    FOREIGN KEY (artist_id) REFERENCES dim_artists(artist_id),         -- Links to the `dim_artists` table for the artist being recommended.
--    FOREIGN KEY (recommended_artist_id) REFERENCES dim_artists(artist_id) -- Links to the `dim_artists` table for the recommended artist.
-- );

-- -----------------------------------------------------------------------------------------------------------------------------------------
-- 2. Transfer Stage Tables to Hist Layer Using Stored Procedures
-- Stage Tables

CREATE TABLE stage_artists (
    id VARCHAR(255),
    followers INT,
    genres TEXT,
    name VARCHAR(255),
    popularity INT);

CREATE TABLE stage_tracks (
    id VARCHAR(255),
    name VARCHAR(255),
    popularity INT,
    duration_ms INT,
    explicit BOOLEAN,
    artists TEXT,
    id_artists VARCHAR(500),
    release_date DATE,
    danceability FLOAT,
    energy FLOAT,
   `key` INT,
    loudness FLOAT,
    mode INT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    time_signature INT);

CREATE TABLE stage_artist_recommendations (
  artist_id VARCHAR(50),
  recommended_artists JSON,
  recommendation_count INT);
-- Procedure for loading stage_artists
DELIMITER //
CREATE PROCEDURE load_stage_artists()
BEGIN
  -- Clear existing data from stage_artists
  TRUNCATE TABLE stage_artists;
  
  -- Insert data from artists4 into stage_artists
  INSERT INTO stage_artists (id, followers, genres, name, popularity)
  SELECT id, followers, genres, name, popularity
  FROM artists4;
  
  -- Log the number of rows inserted
  SELECT CONCAT('Inserted ', ROW_COUNT(), ' rows into stage_artists') AS message;
END //
DELIMITER ;

-- Procedure for loading stage_tracks
DELIMITER //
CREATE PROCEDURE load_stage_tracks()
BEGIN
  -- Clear existing data from stage_tracks
  TRUNCATE TABLE stage_tracks;
  
  -- Insert data from tracks into stage_tracks
  INSERT INTO stage_tracks (id, name, popularity, duration_ms, explicit, artists, id_artists, release_date, danceability, energy, `key`, loudness, mode, speechiness, acousticness, instrumentalness, liveness, valence, tempo, time_signature)
  SELECT id, name, popularity, duration_ms, explicit, artists, id_artists, release_date, danceability, energy, `key`, loudness, mode, speechiness, acousticness, instrumentalness, liveness, valence, tempo, time_signature
  FROM tracks;
  
  -- Log the number of rows inserted
  SELECT CONCAT('Inserted ', ROW_COUNT(), ' rows into stage_tracks') AS message;
END //
DELIMITER ;

-- Procedure for loading stage_artist_recommendations
DELIMITER //
CREATE PROCEDURE load_stage_artist_recommendations()
BEGIN
  -- Clear existing data from stage_artist_recommendations
  TRUNCATE TABLE stage_artist_recommendations;
  
  -- Insert data from artistrecommendations into stage_artist_recommendations
  INSERT INTO stage_artist_recommendations (artist_id, recommended_artists, recommendation_count)
  SELECT ArtistID, RecommendedArtists, RecommendationCount
  FROM artistrecommendations;
  
  -- Log the number of rows inserted
  SELECT CONCAT('Inserted ', ROW_COUNT(), ' rows into stage_artist_recommendations') AS message;
END //
DELIMITER ;

-- Call the procedures
CALL load_stage_artists();
CALL load_stage_tracks();
CALL load_stage_artist_recommendations();

-- Verify the data in stage tables
SELECT COUNT(*) FROM stage_artists;
SELECT COUNT(*) FROM stage_tracks;
SELECT COUNT(*) FROM stage_artist_recommendations;

-- Hist Tables (Dimensional)
CREATE TABLE hist_dim_artists (
    artist_key INT AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(255),
    followers INT,
    genres TEXT,
    name VARCHAR(255),
    popularity INT,
    valid_from DATETIME,
    valid_to DATETIME,
    is_current BOOLEAN
);

CREATE TABLE hist_dim_tracks (
    track_key INT AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(255),
    name VARCHAR(255),
    popularity INT,
    duration_ms INT,
    explicit BOOLEAN,
    artists TEXT,
    id_artists VARCHAR(255),
    release_date DATE,
    danceability FLOAT,
    energy FLOAT,
    `key` INT, 
    loudness FLOAT,
    mode INT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    time_signature INT,
    valid_from DATETIME,
    valid_to DATETIME,
    is_current BOOLEAN
);

-- Hist Table (Fact)
-- The following historical tables (`hist_dim_artists`, `hist_dim_tracks`, `hist_fact_artist_recommendations`) are used to maintain snapshots of data over time.
-- They help in tracking changes, performing time-based queries, and preserving data integrity.
-- This allows for accurate reporting, auditing, and analyzing trends or variations in data, which is essential for understanding past recommendations and ensuring compliance.

CREATE TABLE hist_fact_artist_recommendations (
    recommendation_key INT AUTO_INCREMENT PRIMARY KEY,
    artist_key INT,
    recommendationid VARCHAR(255),
    recommendation_count INT,
    valid_from DATETIME,
    valid_to DATETIME,
    is_current BOOLEAN,
    FOREIGN KEY (artist_key) REFERENCES hist_dim_artists(artist_key)
);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 2.Stage tables should be transferred to the hist layer using store procedures
SET SQL_SAFE_UPDATES = 0;

-- Create the new, simplified procedure
DELIMITER //

CREATE PROCEDURE transfer_artists_stage_to_hist()
BEGIN
    DECLARE inserted_count INT;
    
    START TRANSACTION;

    -- Update existing current records to not current
    UPDATE hist_dim_artists h
    JOIN stage_artists s ON h.id = s.id
    SET h.valid_to = NOW(), h.is_current = FALSE
    WHERE h.is_current = TRUE;

    -- Insert new records or update if they already exist
    INSERT INTO hist_dim_artists (id, followers, genres, name, popularity, valid_from, valid_to, is_current)
    SELECT id, followers, genres, name, popularity, NOW(), NULL, TRUE
    FROM stage_artists
    ON DUPLICATE KEY UPDATE
        followers = VALUES(followers),
        genres = VALUES(genres),
        name = VALUES(name),
        popularity = VALUES(popularity),
        valid_from = NOW(),
        valid_to = NULL,
        is_current = TRUE;

    -- Get the number of affected rows
    SET inserted_count = ROW_COUNT();

    -- Return the number of inserted/updated rows
    SELECT CONCAT('Processed ', inserted_count, ' rows') AS Result;
END //

DELIMITER ;

call transfer_artists_stage_to_hist()

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
DELIMITER //

CREATE PROCEDURE transfer_recommendations_stage_to_hist()
BEGIN
    -- Start a transaction for data consistency
    START TRANSACTION;

    -- Insert new records and update existing ones
    INSERT INTO hist_fact_artist_recommendations (artist_key, recommendationid, recommendation_count, valid_from, valid_to, is_current)
    SELECT 
        a.artist_key, 
        r.artist_id, -- This will be used as recommendationid
        r.recommendation_count,
        NOW(), 
        NULL, 
        TRUE
    FROM stage_artist_recommendations r
    JOIN hist_dim_artists a ON r.artist_id = a.id AND a.is_current = TRUE
    ON DUPLICATE KEY UPDATE
        recommendation_count = VALUES(recommendation_count),
        valid_from = NOW(),
        is_current = TRUE;

    -- Update the valid_to date and is_current flag for old records
    UPDATE hist_fact_artist_recommendations h
    INNER JOIN stage_artist_recommendations s ON h.recommendationid = s.artist_id
    SET 
        h.valid_to = NOW(), 
        h.is_current = FALSE
    WHERE 
        h.is_current = TRUE AND 
        h.valid_from < NOW();

    -- Return a success message
    SELECT 'Recommendations transfer completed successfully' AS Result;
END //

DELIMITER ;
call transfer_recommendations_stage_to_hist()

select* from hist_fact_artist_recommendations
-- ------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER //

CREATE PROCEDURE transfer_tracks_stage_to_hist()
BEGIN
    DECLARE processed_count INT DEFAULT 0;

    -- Start a transaction for data consistency
    START TRANSACTION;

    -- Update existing records to not current
    UPDATE hist_dim_tracks h
    INNER JOIN stage_tracks s ON h.id = s.id
    SET 
        h.valid_to = NOW(), 
        h.is_current = FALSE
    WHERE 
        h.is_current = TRUE AND
        (h.name != s.name OR
         h.popularity != s.popularity OR
         h.duration_ms != s.duration_ms OR
         h.explicit != s.explicit OR
         h.artists != s.artists OR
         h.id_artists != s.id_artists OR
         h.release_date != s.release_date OR
         h.danceability != s.danceability OR
         h.energy != s.energy OR
         h.`key` != s.`key` OR
         h.loudness != s.loudness OR
         h.mode != s.mode OR
         h.speechiness != s.speechiness OR
         h.acousticness != s.acousticness OR
         h.instrumentalness != s.instrumentalness OR
         h.liveness != s.liveness OR
         h.valence != s.valence OR
         h.tempo != s.tempo OR
         h.time_signature != s.time_signature);

    -- Insert new records
    INSERT INTO hist_dim_tracks (
        id, name, popularity, duration_ms, explicit, artists, id_artists, 
        release_date, danceability, energy, `key`, loudness, mode, 
        speechiness, acousticness, instrumentalness, liveness, valence, 
        tempo, time_signature, valid_from, valid_to, is_current
    )
    SELECT 
        id, name, popularity, duration_ms, explicit, artists, id_artists, 
        release_date, danceability, energy, `key`, loudness, mode, 
        speechiness, acousticness, instrumentalness, liveness, valence, 
        tempo, time_signature, NOW(), NULL, TRUE
    FROM stage_tracks s
    WHERE NOT EXISTS (
        SELECT 1 FROM hist_dim_tracks h
        WHERE h.id = s.id AND h.is_current = TRUE
    );

    -- Get the number of processed rows
    SET processed_count = ROW_COUNT();

    -- Return the number of processed rows
    SELECT CONCAT('Processed ', processed_count, ' rows') AS Result;
END //

DELIMITER ;

call transfer_tracks_stage_to_hist()
-- 3. Create 3 triggers on after update, after insert and after delete on any tables in the data warehouse
-- This script creates three triggers to maintain historical data in the hist_dim_artists table
-- based on changes in the stage_artists table. These triggers implement a Slowly Changing
-- Dimension (SCD) Type 2 approach, which keeps track of historical changes.
-- --------------------------------------------------------------------------------------------------------------------------------------
-- After Insert Trigger
DELIMITER //

CREATE TRIGGER trg_after_insert_stage_artists
AFTER INSERT ON stage_artists
FOR EACH ROW
BEGIN
    -- Insert the new artist data into the historical dimension table
    INSERT INTO hist_dim_artists (
        id, followers, genres, name, popularity, 
        valid_from, valid_to, is_current
    )
    VALUES (
        NEW.id, 
        NEW.followers, 
        NEW.genres, 
        NEW.name, 
        NEW.popularity,
        NOW(),   -- Start of validity is the current timestamp
        NULL,    -- NULL indicates that this record is currently valid
        TRUE     -- This is the current version of the artist data
    );

    -- Log the insertion for auditing purposes
    INSERT INTO data_change_log (table_name, operation, record_id, change_date)
    VALUES ('stage_artists', 'INSERT', NEW.id, NOW());
END //

DELIMITER ;
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- After update trigger
DELIMITER //

CREATE TRIGGER trg_after_update_stage_artists
AFTER UPDATE ON stage_artists
FOR EACH ROW
BEGIN
    -- Purpose: This trigger maintains historical data when an artist record is updated in stage_artists
    -- It "closes" the current historical record and creates a new one with the updated information

    -- Step 1: Close the current historical record
    UPDATE hist_dim_artists
    SET 
        valid_to = NOW(),       -- Close the current valid record by setting valid_to to the current time
        is_current = FALSE      -- Mark the current record as no longer current
    WHERE 
        id = OLD.id             -- Reference the old artist ID
        AND is_current = TRUE;  -- Only update the current record

    -- Step 2: Insert a new historical record with the updated information
    INSERT INTO hist_dim_artists (
        id, followers, genres, name, popularity, 
        valid_from, valid_to, is_current
    )
    VALUES (
        NEW.id,                 -- Use the updated artist ID
        NEW.followers,          -- Use the updated followers value
        NEW.genres,             -- Use the updated genres
        NEW.name,               -- Use the updated name
        NEW.popularity,         -- Use the updated popularity
        NOW(),                  -- Set the start of validity to the current timestamp
        NULL,                   -- NULL indicates that this record is currently valid
        TRUE                    -- This is the current version of the artist data
    );

    -- Log the update for auditing purposes
    INSERT INTO data_change_log (table_name, operation, record_id, change_date)
    VALUES ('stage_artists', 'UPDATE', NEW.id, NOW());
END //

DELIMITER ;
-- ----------------------------------------------------------------------------------------------------------------------------------------------
-- After Delete Trigger
DELIMITER //

CREATE TRIGGER trg_after_delete_stage_artists
AFTER DELETE ON stage_artists
FOR EACH ROW
BEGIN
    -- Purpose: This trigger maintains historical data when an artist record is deleted from stage_artists
    -- It marks the current historical record as no longer active, preserving the historical data

    UPDATE hist_dim_artists
    SET 
        valid_to = NOW(),        -- Mark the valid_to timestamp to indicate when the record became inactive
        is_current = FALSE       -- Mark the record as no longer current
    WHERE 
        id = OLD.id              -- Use the old artist ID from the deleted row
        AND is_current = TRUE;   -- Only update the current record

    -- Log the deletion for auditing purposes
    INSERT INTO data_change_log (table_name, operation, record_id, change_date)
    VALUES ('stage_artists', 'DELETE', OLD.id, NOW());
END //

DELIMITER ;


-- Note: Ensure that the data_change_log table exists before enabling the logging feature
-- CREATE TABLE data_change_log (
--     log_id INT AUTO_INCREMENT PRIMARY KEY,
--     table_name VARCHAR(50),
--     operation VARCHAR(10),
--     record_id VARCHAR(255),
--     change_date DATETIME
-- );

-- These triggers automatically maintain the hist_dim_artists table.
-- ------------------------------------------------------------------------------------------------------------------------------------------
-- 4.Create 3 views on the hist layer of the data warehouse that filter data

-- This view selects all artists with a popularity greater than 80
-- and ensures the data is current (is_current = TRUE).
CREATE VIEW view_popular_artists AS
SELECT * 
FROM hist_dim_artists
WHERE popularity > 80 
AND is_current = TRUE;
-- --------------------------------------------------------------------------------------------------------------------------------------
-- This view selects all tracks marked as explicit
-- ensures the data is current.
CREATE VIEW view_explicit_tracks AS
SELECT * 
FROM hist_dim_tracks
WHERE explicit = TRUE 
AND is_current = TRUE;
-- ---------------------------------------------------------------------------------------------------------------------------------------

-- This view selects artist recommendations from the past 30 days
-- ensures the data is current.
CREATE VIEW view_recent_recommendations AS
SELECT * 
FROM hist_fact_artist_recommendations
WHERE valid_from > DATE_SUB(NOW(), INTERVAL 30 DAY) 
AND is_current = TRUE;
-- -----------------------------------------------------------------------------------------------------------------------------------------


-- 5.Create 3 views on the hist layer of the data warehouse that aggregate data

-- This view calculates the average popularity of artists

CREATE VIEW view_avg_artist_popularity AS
SELECT AVG(popularity) as avg_popularity
FROM hist_dim_artists
WHERE is_current = TRUE;
-- -----------------------------------------------------------------------------------------------------------------------------------
-- This view counts the number of tracks by each artist

CREATE VIEW view_track_count_by_artist AS
SELECT id_artists, COUNT(*) as track_count
FROM hist_dim_tracks
WHERE is_current = TRUE
GROUP BY id_artists;
-- -------------------------------------------------------------------------------------------------------------------------------------
-- This view selects the top 10 artists based on the total number of recommendations

CREATE VIEW view_top_recommendations AS
SELECT artist_key, SUM(recommendation_count) as total_recommendations
FROM hist_fact_artist_recommendations
WHERE is_current = TRUE
GROUP BY artist_key
ORDER BY total_recommendations DESC
LIMIT 10;
-- -----------------------------------------------------------------------------------------------------------------------------------------



-- 6. Create 3 different store procedures that perform a particular task in the data warehouse
DELIMITER //

-- Procedure 1: Get Artist Popularity History
-- This procedure retrieves the popularity history for a given artist
CREATE PROCEDURE sp_get_artist_popularity_history(IN p_artist_id VARCHAR(255))
BEGIN
    SELECT name, popularity, valid_from, valid_to
    FROM hist_dim_artists
    WHERE id = p_artist_id
    ORDER BY valid_from;
END //

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Procedure 2: Update Artist Recommendations
-- This procedure updates the artist recommendations based on track popularity, from json file insert
DELIMITER $$

CREATE PROCEDURE sp_update_artist_recommendations()
BEGIN
    -- Temporary table to hold new recommendations
    CREATE TEMPORARY TABLE temp_recommendations1 (
        artist_id VARCHAR(255),
        recommended_artists JSON,
        recommendation_count INT
    );

    -- Generate new recommendations based on track popularity
    INSERT INTO temp_recommendations1
    SELECT 
        a.id AS artist_id,
        JSON_ARRAYAGG(
            JSON_OBJECT(
                'id', recommended_artist.id,
                'name', recommended_artist.name,
                'popularity', recommended_artist.popularity)) AS recommended_artists,
        COUNT(DISTINCT recommended_artist.id) AS recommendation_count
    FROM stage_artists a
    JOIN stage_tracks t ON JSON_CONTAINS(t.id_artists, JSON_QUOTE(a.id))
    JOIN stage_tracks recommended_tracks ON recommended_tracks.popularity > t.popularity
    JOIN stage_artists recommended_artist ON JSON_CONTAINS(recommended_tracks.id_artists, JSON_QUOTE(recommended_artist.id))
    WHERE a.id != recommended_artist.id
    GROUP BY a.id
    LIMIT 10;  -- Limit to top 10 recommendations per artist

    -- Update stage_artist_recommendations table
    INSERT INTO stage_artist_recommendations (artist_id, recommended_artists, recommendation_count)
    SELECT * FROM temp_recommendations1
    ON DUPLICATE KEY UPDATE
        recommended_artists = VALUES(recommended_artists),
        recommendation_count = VALUES(recommendation_count);

    -- Clean up
    DROP TEMPORARY TABLE temp_recommendations1;
END $$

DELIMITER ;

-- test procedure: 
INSERT INTO stage_artists (id, name)
VALUES 
    ('artist_1', 'Artist One'),
    ('artist_2', 'Artist Two'),
    ('artist_3', 'Artist Three'),
    ('artist_4', 'Artist Four');

INSERT INTO stage_tracks (id, name, popularity, id_artists)
VALUES 
    ('track_1', 'Track One', 75, JSON_ARRAY('artist_1')),
    ('track_2', 'Track Two', 85, JSON_ARRAY('artist_2')),
    ('track_3', 'Track Three', 90, JSON_ARRAY('artist_3')),
    ('track_4', 'Track Four', 80, JSON_ARRAY('artist_4')),
    ('track_5', 'Track Five', 95, JSON_ARRAY('artist_1', 'artist_4'));

CALL sp_update_artist_recommendations();

SELECT * FROM stage_artist_recommendations;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Procedure 3: Categorize Tracks by Mood
-- This procedure analyzes track characteristics and categorizes them into mood groups

DELIMITER $$

CREATE PROCEDURE sp_categorize_tracks_by_mood()
BEGIN
    -- Create a temporary table to store mood categories (RUN FIRST IF ERROR)
    CREATE TEMPORARY TABLE temp_mood_categories (
        track_id VARCHAR(255),
        track_name VARCHAR(255),
        mood VARCHAR(50)
    );

    -- Insert tracks into mood categories based on their characteristics
    INSERT INTO temp_mood_categories (track_id, track_name, mood)
    SELECT id, name,
        CASE
            WHEN valence > 0.8 AND energy > 0.8 THEN 'Euphoric'
            WHEN valence > 0.6 AND energy > 0.6 THEN 'Happy'
            WHEN valence < 0.3 AND energy < 0.4 THEN 'Sad'
            WHEN valence < 0.4 AND energy > 0.7 THEN 'Angry'
            WHEN valence BETWEEN 0.4 AND 0.6 AND energy BETWEEN 0.4 AND 0.6 THEN 'Neutral'
            WHEN acousticness > 0.8 THEN 'Calm'
            WHEN danceability > 0.8 THEN 'Groovy'
            ELSE 'Other'
        END AS mood
    FROM stage_tracks;

    -- Report the number of tracks in each mood category
    SELECT 
        mood,
        COUNT(*) as track_count,
        AVG(t.popularity) as avg_popularity
    FROM temp_mood_categories mc
    JOIN stage_tracks t ON mc.track_id = t.id
    GROUP BY mood
    ORDER BY track_count DESC;

    -- Report top 5 most popular tracks for each mood
    SELECT 
        mood,
        track_name,
        t.popularity
    FROM (
        SELECT mood,track_id, track_name, ROW_NUMBER() OVER (PARTITION BY mood ORDER BY t.popularity DESC) as popularity_rank
        FROM temp_mood_categories mc
        JOIN stage_tracks t ON mc.track_id = t.id
    ) ranked_tracks
    JOIN stage_tracks t ON ranked_tracks.track_id = t.id
    WHERE popularity_rank <= 5
    ORDER BY mood, t.popularity DESC;

    -- Clean up
    DROP TEMPORARY TABLE temp_mood_categories;
END //

DELIMITER ;

CALL sp_categorize_tracks_by_mood();

-- Examples:
call sp_get_artist_popularity_history('01FkCqvSAE5mBeTz5QQsx3');
call sp_update_artist_recommendations(); --  call load_stage_tracks() , call load_stage_artists()
