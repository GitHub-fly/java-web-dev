package com.entity;

/**
 * @author xunmi
 * @ClassName Book
 * @Description 红色书籍实体类
 * @Date 2019/10/3
 * @Version 1.0
 **/
public class Book {
    private Integer id;
    private String name;
    private String cover;
    private String author;
    private String info;

    public Book(Integer id, String name, String cover, String author, String info) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.author = author;
        this.info = info;
    }

    public Book() {
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", author='" + author + '\'' +
                ", info='" + info + '\'' +
                '}';
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


}
