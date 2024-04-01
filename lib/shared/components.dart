import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

import '../models/models.dart';
import '../views/trip_details_screen.dart';
import 'constants.dart';

Widget catItem({required CategoryModel model, required context}) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: secondaryColor.withOpacity(0.70),
              radius: 34,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45,
              backgroundImage: AssetImage(model.imageUrl),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          model.title,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 15,
                fontFamily: 'oxygen',
              ),
        ),
      ],
    ),
  );
}

Widget attractionsWidget(Attraction model, context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * .34,
    child: Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.white,
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            child: Image.network(
              model.imageUrl,
              width: MediaQuery.of(context).size.width * .40,
              fit: BoxFit.cover,
              height: 109,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: AutoSizeText(
                  model.name,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.2,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'oxygen'),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: defaultColor,
                    ),
                    const SizedBox(width: 3),
                    Text(model.location,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'oxygen'))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
/*
*
*/

PreferredSizeWidget defaultAppbar({
  required BuildContext context,
  String? title,
  List<Widget>? actions,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: actions,
    elevation: 0,
    title: Text(
      title!,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'oxygen',
          fontWeight: FontWeight.w600),
    ),
    leading: IconButton(
      icon: const Icon(
        IconBroken.Arrow___Left_2,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}

Widget titleBuilder(String text, context) {
  return Text(text,
      style: Theme.of(context)
          .textTheme
          .labelMedium!
          .copyWith(fontFamily: 'oxygen'));
}

Widget tripCard({
  required Trip tripModel,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const TripDetailsScreen()));
    },
    child: Card(
      shadowColor: Theme.of(context).colorScheme.error,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                child: Image.network(
                  tripModel.featureImgUrl,
                  height: 250,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: const [0.4, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.8),
                        ])),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 200,
                alignment: Alignment.bottomLeft,
                child: Text(
                  tripModel.title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.attach_money_rounded,
                      color: Color(0xffF5A31B),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      tripModel.price.toString(),
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_city,
                      color: Color(0xffF5A31B),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${tripModel.cities} cities',
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.today_sharp,
                      color: Color(0xffF5A31B),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      tripModel.duration,
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget categoryItem({
  required Category categoryModel,
}) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Image.network(
          categoryModel.imageUrl,
          fit: BoxFit.cover,
          height: 200,
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(18)),
        alignment: Alignment.center,
        height: 200,
        child: Text(
          categoryModel.title,
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontFamily: 'oxygen'),
        ),
      )
    ],
  );
}

Widget customIcon(IconData icon, {Color? color}) {
  return CircleAvatar(
    backgroundColor: defaultColor,
    child: Icon(
      icon,
      color: color ?? Colors.white,
    ),
  );
}

Widget includeItem(bool i, String title, BuildContext context) {
  return ListTile(
    leading: Icon(
      i ? Icons.done : Icons.clear,
      color: i ? Colors.green : Colors.red,
    ),
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: Colors.black),
    ),
  );
}

Widget itinerary(String title, BuildContext context) {
  return ListTile(
    leading: const Icon(Icons.edit_location),
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: Colors.black),
    ),
  );
}

customTextField(
    {TextInputType? inputType,
    double? borderRadius,
    required Controller,
    String? title,
    String? hintText,
    VoidCallback? fieldTapping,
    required validator,
    double? cp,
    required IconData? prefixIcon}) {
  return TextFormField(
    onTap: fieldTapping,
    keyboardType: inputType,
    controller: Controller,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: cp ?? 18),
      labelStyle: TextStyle(
        fontSize: 15,
        fontFamily: 'oxygen',
        fontWeight: FontWeight.w600,
      ),
      labelText: title,
      hintText: hintText,
      prefixIcon: Icon(prefixIcon),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
    ),
    validator: validator,
  );
}

customField({
  VoidCallback? fieldTapping,
  required String name,
  required IconData prefixIcon,
  required String? Function(String?) validate,
  IconButton? suffixIcon,
  required TextEditingController controller,
  bool? obsecureText,
  bool? autofocus,
}) {
  return TextFormField(
    autofocus: autofocus ?? false,
    controller: controller,
    validator: validate,
    onTap: fieldTapping,
    obscureText: obsecureText ?? false,
    decoration: InputDecoration(
      hintText: name,
      suffixIcon: suffixIcon,
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontFamily: 'oxygen',
        // fontWeight: FontWeight.w600,
      ),
      prefixIcon: Icon(prefixIcon),
      filled: true,
      fillColor: const Color(0xffEEEEEE),
      border: InputBorder.none,
    ),
  );
}

Widget submitButton({
  required String submitText,
  required onTap,
}) {
  return SizedBox(
    height: 55,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigoAccent,
      ),
      onPressed: onTap,
      child: Text(
        submitText,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 20,
            fontFamily: 'oxygen'),
      ),
    ),
  );
}

Widget formBackground({
  required String welcomeTitle,
  required String welcomeHint,
  required String imgPath,
}) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  imgPath,
                ),
                fit: BoxFit.cover,
                // width: double.infinity,
                // height: double.infinity,
              )),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.4),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 38, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      welcomeTitle,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 31,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      welcomeHint,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'oxygen',
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
          ))
    ],
  );
}

Widget layoutForm(Widget widget) {
  return LayoutBuilder(
    builder: (context, constraint) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: widget,
          ),
        ),
      );
    },
  );
}

void navigateReplacement({
  required BuildContext context,
  required Widget widget,
}) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}

Widget recTrip({
  required Trip tripModel,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      navigateReplacement(context: context, widget: const TripDetailsScreen());
    },
    child: SizedBox(
      //width: MediaQuery.of(context).size.width * .84,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  tripModel.featureImgUrl,
                  fit: BoxFit.cover,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tripModel.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: secondaryColor,
                        fontFamily: 'oxygen',
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tripModel.tripType,
                        style: TextStyle(
                          fontFamily: 'oxygen',
                          color: defaultColor,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '${tripModel.price}\$',
                        style: TextStyle(
                          fontFamily: 'oxygen',
                          color: defaultColor,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    tripModel.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      wordSpacing: 1,
                      fontSize: 11,
                      color: Colors.grey,
                      fontFamily: 'oxygen',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
