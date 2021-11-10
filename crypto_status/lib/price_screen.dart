import 'package:crypto_status/coin_data.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:io' show Platform;
import 'network_service.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';

  double currencyPrice = 0;

  DropdownButton<String> AndroidDropDownButton() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String currencyText in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currencyText),
        value: currencyText,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
        value: selectedCurrency,
        items: dropdownItems,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value!;
          });
          getLiveData();
        });
  }

  CupertinoPicker IOSPicker() {
    List<Text> listItems = [];
    for (String currencyText in currenciesList) {
      var newItem = Text(currencyText);
      listItems.add(newItem);
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.2,
      onSelectedItemChanged: (selectedIndex) {
       
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
        });
         getLiveData();
      },
      children: listItems,
    );
  }

  void getLiveData() async {
    var api =
        "https://rest.coinapi.io/v1/exchangerate/BTC/$selectedCurrency?apikey=0C4A87AF-C797-4F7E-A2EC-901AF18F8BFC";

    NetworkService service = NetworkService(api: api);

    var detail = await service.getData();

    if (detail == null) {
      currencyPrice = 0;
    } else {
      currencyPrice = detail['rate'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
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
                  '1 BTC = $currencyPrice $selectedCurrency',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? IOSPicker() : AndroidDropDownButton(),
          ),
        ],
      ),
    );
  }
}
