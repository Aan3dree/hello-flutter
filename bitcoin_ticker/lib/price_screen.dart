import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String? coinCurrency = 'USD';
  CoinData coinData = CoinData();
  String coinValueBtc = '?';
  String coinValueEth = '?';
  String coinValueLtc = '?';
  List<DropdownMenuItem<String>> pushCoins() {
    List<DropdownMenuItem<String>> menuItens = [];
    for (int i = 0; i < currenciesList.length; i++) {
      menuItens.add(
        DropdownMenuItem(
          value: currenciesList[i],
          child: Text(currenciesList[i]),
        ),
      );
    }
    return menuItens;
  }

  @override
  void initState() {
    super.initState();
    print('caled init');
    updateUIOnInit();
  }

  void updateUI(String? coin) async {
    var btcValue = await coinData.getBtcCoinCurency(coin);
    var ethValue = await coinData.getEthCoinCurency(coin);
    var ltcValue = await coinData.getLtcCoinCurency(coin);
    if (btcValue != null && ethValue != null && ltcValue != null) {
      setState(() {
        coinValueBtc = btcValue;
        coinValueEth = ethValue;
        coinValueLtc = ltcValue;
        coinCurrency = coin;
      });
    }
  }

  void updateUIOnInit() async {
    var btcValue = await coinData.getBtcCoinCurency('USD');
    var ethValue = await coinData.getEthCoinCurency('USD');
    var ltcValue = await coinData.getLtcCoinCurency('USD');
    if (btcValue != null) {
      setState(() {
        coinValueBtc = btcValue;
        coinValueEth = ethValue;
        coinValueLtc = ltcValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $coinValueBtc $coinCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 ETH = $coinValueEth $coinCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 LTC = $coinValueLtc $coinCurrency',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: coinCurrency,
              items: pushCoins(),
              onChanged: (value) {
                updateUI(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
