// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:home_module/HomeModels/product_list.dart';
import 'package:network_module/utils/utils.dart';

class ProductCard extends StatelessWidget {
  final Product? product;

  const ProductCard({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final data = datas[index % datas.length];
    const borderRadius = BorderRadius.all(Radius.circular(10));

    return InkWell(
        borderRadius: borderRadius,
        onTap: () => null,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      // child: ColorFiltered(
                      //   colorFilter: ColorFilter.mode(
                      //       Colors.grey, BlendMode.colorBurn),
                      child: CachedNetworkImage(
                          color: Colors.grey,
                          colorBlendMode: BlendMode.colorBurn,
                          filterQuality: FilterQuality.high,
                          width: 80,
                          height: 120,
                          imageUrl: product!.heroImage!),
                      //  )
                    ),
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
                  product!.brandName!,
                  style: const TextStyle(
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildSoldPoint(),
              /*  const SizedBox(height: 10),
              Text(
                "2222222",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121)),
              ) */
            ],
          ),
        ));
  }

  Widget _buildSoldPoint() {
    return Row(
      children: [
        /*  Image.asset('assets/icons/start@2x.png', width: 20, height: 20), */
        const SizedBox(width: 8),
        Icon(
          Icons.star_rate,
          color: Colors.amber,
          size: 16,
        ),
        Text(
          product!.rating.toString(),
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
            '100 sold',
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
