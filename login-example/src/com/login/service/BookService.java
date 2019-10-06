package com.login.service;

import com.login.entity.Book;

import java.util.Arrays;
import java.util.List;

/**
 * @ClassName BookService
 * @Description 图书业务逻辑
 * @author xunmi
 * @Date 2019/9/26
 * @Version 1.0
 **/
public class BookService {
    private static List<Book> bookList;
    public static List<Book> init() {
        Book[] books = {
                new Book(1, "Java", "book1.jpg", "Java作者"),
                new Book(2, "Java", "book2.jpg", "Java作者"),
                new Book(1, "Java", "book3.jpg", "Java作者"),
                new Book(1, "Java", "book1.jpg", "Java作者"),
                new Book(1, "Java", "book2.jpg", "Java作者"),
                new Book(1, "Java", "book3.jpg", "Java作者"),
                new Book(1, "Java", "book1.jpg", "Java作者"),
                new Book(1, "Java", "book2.jpg", "Java作者"),
                new Book(1, "Java", "book3.jpg", "Java作者")
        };
        bookList = Arrays.asList(books);
        return bookList;
    }

    public static void main(String[] args) {
        BookService bs = new BookService();
        init();

    }
}
