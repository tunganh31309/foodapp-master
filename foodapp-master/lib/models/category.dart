import 'package:flutter/material.dart';

class Category {
  //this is called "model"
  final int id; //id
  final String content; // nội dung thể loại
  final Color color; // màu sắc
  // final nghĩa là giá trị chỉ xét 1 lần không tham chiếu sang thằng khác
  const Category({@required this.id, @required this.content, this.color});
  // id và content cho required bởi bắt buộc phải nhập vào
}
// thực thể các đối tượng ở đây chẳng hạn như là danh sách các món ăn, danh sách các thể loại món ăn
