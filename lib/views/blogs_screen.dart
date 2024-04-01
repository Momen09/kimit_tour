import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:readmore/readmore.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: const [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: NetworkImage(
                              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Jack Wilson',
                                style: TextStyle(
                                  height: 1.4,
                                  fontFamily: 'oxygen',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'October 15, 2023 at 11:00 pm',
                                style: TextStyle(
                                  height: 1.4,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconBroken.More_Circle,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.grey[300],
                        height: 0.9,
                      ),
                    ),
                    const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: ' Show less',
                      lessStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                      moreStyle: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 1,
                              padding: EdgeInsets.zero,
                              height: 25.0,
                              child: const Text(
                                '#Software',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.imgur.com/4ztvNZ4_d.webp?maxwidth=1520&fidelity=grand'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    IconBroken.Heart,
                                    color: Colors.redAccent,
                                    size: 19,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '15',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                              child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    IconBroken.Chat,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '120 comment',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'oxygen',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.blueGrey,
                                  backgroundImage: NetworkImage(
                                      'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Write a comment ...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  IconBroken.Heart,
                                  color: Colors.redAccent,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          IconBroken.Paper_Upload,
        ),
        onPressed: () {},
      ),
    );
  }
}
