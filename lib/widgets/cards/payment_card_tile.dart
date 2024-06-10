import 'package:invoice_management_system_flutter_ui/imports.dart';

class PaymentCardTile extends StatelessWidget {
  final PaymentModel? data;
  final Function()? onTap;

  const PaymentCardTile({Key? key, this.data, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: TextBuilder(
        text: data!.userName,
        fontSize: 18.0,
        color: Colors.black,
      ),
      subtitle: TextBuilder(
        text: '₹ ${data!.date}',
        fontSize: 12,
      ),
      trailing: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(data!.avatar!),
      ),
    );
  }
}
