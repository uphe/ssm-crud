package com.hzy.controller;

import com.hzy.pojo.Book;
import com.hzy.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    // controller掉用service
    @Autowired
    private BookService bookService;

    @RequestMapping("/allBook")
    public String queryAllBook(Model model) {
        List<Book> books = bookService.queryAllBook();
        model.addAttribute("books",books);
        return "allBook";
    }

    //跳转到添加界面
    @RequestMapping("/toAddBook")
    public String toAddBook() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Book book) {
        System.out.println("添加图书");
        bookService.addBook(book);
        // 重定向
        return "redirect:/book/allBook";
    }

    //跳转到修改界面
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id,Model model) {
        Book book = bookService.queryBookById(id);
        model.addAttribute("book",book);
        return "updateBook";
    }
    @RequestMapping("/updateBook")
    public String updateBook(Book book) {
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBookByName")
    public String queryBookByName(String bookName, Model model) {
        Book book = bookService.queryBookByName(bookName);
        List<Book> books = new ArrayList<Book>();
        books.add(book);
        model.addAttribute("books",books);
        return "allBook";
    }

}
