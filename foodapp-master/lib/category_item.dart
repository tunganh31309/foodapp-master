import 'package:flutter/material.dart';
import 'package:foodapp/foods_page.dart';
import 'package:foodapp/models/category.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  //1 categoryItem - 1 category object
  //  1 cái categoryItem tương ứng với 1 một object
  Category category;
  CategoryItem({this.category}); // Định nghĩa thuộc tính Category
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      // InkWell có thể bấm(onTap) như Bottom
      onTap: () {
        print(
            'tapped to category: ${this.category.content}'); // nếu như bấm vào cái category nào thì sẽ nối string
        //Navigate to another page
        //Pages are stored into a Stack, the page you see is the top Page(in the stack)
        /*
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FoodsPage(category: this.category,)//you can send parameters using constructor
            ));
         */
        //Are there another way to send parameters ? Yes !, Use RouteNames
        Navigator.pushNamed(context, FoodsPage.routeName, arguments: {
          'category': category
        }); //'/FoodsPage' is "route's name", donot save like this, let's use a "static variable"
      },
      splashColor: Colors.deepPurple, // màu nó nháy lên khi bấm vào item
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // cho thẻ Column, Alignment theo chiều X chiều Y dựa vào center
          children: <Widget>[
            //Now change font's family from "Google Fonts"
            Text(this.category.content,
                style: Theme.of(context).textTheme.title),
            // lúc này là font sunshiney
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                // Gradient là biến thiên biến đổi từ màu A => màu B
                colors: [_color.withOpacity(0.8), _color],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
            // màu color theo chiều bắt đầu topRight và kết thích là bottomLeft
            color: _color, // _color là chủ dùng riêng trong class này
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
