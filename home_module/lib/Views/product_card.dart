// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:network_module/utils/utils.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final data = datas[index % datas.length];
    const borderRadius = BorderRadius.all(Radius.circular(10));
    var image = NetworkImage(
        "https://www.sephora.com/productimages/sku/s1217744-main-grid.jpg?pb=2020-03-sephora-clean-2019");
    return InkWell(
        borderRadius: borderRadius,
        onTap: () => null,
        child: Container(
          // margin: EdgeInsets.only(left: 22, right: ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          child: CachedNetworkImage(
                              color: Colors.grey,
                              colorBlendMode: BlendMode.colorBurn,
                              filterQuality: FilterQuality.high,
                              width: 80,
                              height: 140,
                              imageUrl:
                                  "https://www.sephora.com/productimages/sku/s1217744-main-grid.jpg?pb=2020-03-sephora-clean-2019"),
                        )),
                    // Image.asset("data.icon", width: 182, height: 182),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Icon(
                        Icons.star_border_outlined,
                        color: Utils.secondaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              FittedBox(
                child: Text(
                  " data.title",
                  style: const TextStyle(
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildSoldPoint(4.5, 6937),
              const SizedBox(height: 10),
              Text(
                "2222222",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121)),
              )
            ],
          ),
        ));
  }

  Widget _buildSoldPoint(double star, int sold) {
    return Row(
      children: [
        /*  Image.asset('assets/icons/start@2x.png', width: 20, height: 20), */
        const SizedBox(width: 8),
        Text(
          '$star',
          style: const TextStyle(
            color: Color(0xFF616161),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          '|',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF616161),
              fontSize: 14),
        ),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: const Color(0xFF101010).withOpacity(0.08),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Text(
            '$sold sold',
            style: const TextStyle(
              color: Color(0xFF35383F),
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
