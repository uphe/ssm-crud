package com.hzy.service;

import com.hzy.dao.BookMapper;
import com.hzy.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    // service层调用dao层，自动装配
    @Autowired
    private BookMapper bookMapper;

    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    public Book queryBookById(int bookId) {
        return bookMapper.queryBookById(bookId);
    }

    public Book queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }

    public List<Book> queryAllBook() {
        return bookMapper.queryAllBook();
    }
}
