package com.hzy.dao;

import com.hzy.pojo.Book;

import java.util.List;

public interface BookMapper {
    // 添加一本书
    int addBook(Book book);
    // 删除一本书
    int deleteBookById(int id);
    // 更新一本书
    int updateBook(Book book);
    // 通过id查询图书
    Book queryBookById(int id);
    // 通过书名查询图书
    Book queryBookByName(String bookName);
    // 查询所有的书
    List<Book> queryAllBook();
}
