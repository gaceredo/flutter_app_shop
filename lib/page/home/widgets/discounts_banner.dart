import 'package:flutter/material.dart';
import 'package:store_flutter/utils/app_theme.dart';

class DiscountsBanner extends StatelessWidget {
  const DiscountsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.bgApp,
            offset: Offset(0.5, 0.5),
            blurRadius: 5.0,
          ),
        ],
      ),
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: AppTheme.bgApp,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: const Icon(
                    Icons.local_offer,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '50% OFF',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'On all women\'s shoes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
