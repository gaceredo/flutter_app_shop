import 'package:flutter/material.dart';
import 'package:store_flutter/utils/app_theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 0, top: 8, bottom: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                  border: Border.all(
                    color: AppTheme.darkText,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 4, bottom: 4),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (String txt) {},
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          cursorColor: AppTheme.darkText,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search...',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Icon(
                          Icons.search,
                          color: AppTheme.darkText,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(32.0),
              ),
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.filter_alt,
                  size: 30,
                  color: AppTheme.blackBeauty,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
