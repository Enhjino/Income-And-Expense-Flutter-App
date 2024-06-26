import 'package:flutter/material.dart';

class TransactionWidget extends StatefulWidget {
  const TransactionWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.date,
    required this.amount,
  });
  final String title;
  final String imagePath;
  final String date;
  final double amount;

  String get getDate => date;
  double get getAmount => amount;

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    String amountText = "";
    if(widget.amount > 0) {
      amountText = "+ \$${widget.amount}";
    } else {
      amountText = "- \$${widget.amount.abs()}";
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        transactionDetails(),
        Text(
          amountText,
          style: TextStyle(
            color: widget.amount > 0 ? Colors.green : Colors.red,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget transactionDetails() {
    return Row(
        children: [
          Container(
            width: 60,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Image(
              width: 35,
              image: AssetImage(widget.imagePath),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                widget.date,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ]
    );
  }

  String convertMonth(int month) {
    String result = "";
    switch(month) {
      case 1:
        result = "Jan";
        break;
      case 2:
        result = "Feb";
        break;
      case 3:
        result = "Mar";
        break;
      case 4:
        result = "Apr";
        break;
      case 5:
        result = "May";
        break;
      case 6:
        result = "June";
        break;
      case 7:
        result = "July";
        break;
      case 8:
        result = "Aug";
        break;
      case 9:
        result = "Sep";
        break;
      case 10:
        result = "Oct";
        break;
      case 11:
        result = "Nov";
        break;
      default:
        result = "Dec";
    }
    return result;
  }
}