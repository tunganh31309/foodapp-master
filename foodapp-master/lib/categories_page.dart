import 'package:flutter/material.dart';
import 'package:foodapp/category_item.dart';
import 'package:foodapp/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  // class CategoriesPage kế thừa từ thẻ  StatelessWidget
  // Vì trong này danh sách này không thêm sửa xóa
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    return GridView(
      // GridView là theo dạng lưới , list của mình theo chiều ngang và chiều dọc
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES
          .map((eachCategory) => CategoryItem(category: eachCategory))
          .toList(), // để convert một đối tượng => dùng hàm map
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, // chiều rộng max
          childAspectRatio: 3 / 2, // tỉ lệ giữa chiều rộng chia chiều cao
          crossAxisSpacing: 12, // độ rộng các lưới theo chiều dọc chiều ngang
          mainAxisSpacing: 12),
    );
  }
}
// có một cái màn hình chứa các danh sách các categories , cái này nằm ngoài model, phần giao diện
