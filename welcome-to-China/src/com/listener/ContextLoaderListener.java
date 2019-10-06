package com.listener;

import com.entity.Book;
import com.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author xunmi
 * @ClassName ContextLoaderListener
 * @Description TODO
 * @Date 2019/9/30
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {



        System.out.println("容器启动");
        // 创建并生成用户数据列表
        List<User> userList = new ArrayList<User>(4);
        User[] users = {
                new User(1, "1802343124", "fae0b27c451c728867a567e8c1bb4e53", "张浩杰", "user1.jpg", "山西晋城", LocalDate.of(2018, 6, 11), "南京工业职业技术学院", "计算机与软件学院", "男"),
                new User(2, "1802343118", "fae0b27c451c728867a567e8c1bb4e53", "王登科", "user2.jpg", "山西吕梁", LocalDate.of(2019, 2, 18), "南京工业职业技术学院", "计算机与软件学院", "男"),
                new User(3, "1802343114", "fae0b27c451c728867a567e8c1bb4e53", "苏玉溪", "user3.jpg", "广西南宁", LocalDate.of(2019, 8, 19), "南京工业职业技术学院", "计算机与软件学院", "男"),
                new User(3, "1802343140", "fae0b27c451c728867a567e8c1bb4e53", "曾传志", "user4.jpg", "江西南昌", LocalDate.of(2019, 8, 19), "南京工业职业技术学院", "计算机与软件学院", "男"),
        };
        userList = Arrays.asList(users);


        // 创建并生成图书数据列表
        List<Book> bookList = new ArrayList<Book>(10);
        Book[] books = {
                new Book(1, "《红星照耀中国》", "book1.jpg", "【美】埃德加·斯诺", "《红星照耀中国》（曾译《西行漫记》）自1937年初版以来，畅销至今，而董乐山译本已经是今天了解中国工农红军的经典读本。本书真实记录了斯诺自1936年6月至10月在中国西北革命根据地进行实地采访的所见所闻，向全世界报道了中国和中国工农红军以及许多红军领袖、红军将领的情况。2016年是长征胜利80周年，也是本书出版80周年，此次新版得到董乐山家属独家授权，并配有五十余幅珍贵历史照片，是由人民文学出版社推出的最经典译本。"),
                new Book(2, "《毛泽东选集》", "book2.jpg", "毛泽东", "《毛泽东选集》是毛泽东思想的重要载体，《毛泽东选集》是毛泽东思想的集中展现，是对20世纪中国影响最大的书籍之一。建国后两个版别的《毛泽东选集》，均由人民出版社出版。《毛泽东选集》在建国前即有大量出版。自1944年晋察冀日报社出版第一部《毛泽东选集》。建国后出版的《毛泽东选集》一至四卷，编入的是毛泽东同志在新民主主义革命时期的主要著作。"),
                new Book(3, "《中国人的精神》", "book3.jpg", "辜鸿铭", "《中国人的精神》又名《春秋大义》,是辜鸿铭最有影响的英文代表作品,全书由作者1914年发表于英文报纸《中国评论》、以“中国人的精神”为核心的系列英语论文结集而成。是东西方文化比较的早期代表作品。辜鸿铭论述的主旨就是揭示中国人的精神生活,阐发 中国传统文化的永恒价值。"),
                new Book(4, "《平民主义》", "book4.jpg", "李大钊", "《平民主义》是中国共产党早期领导人李大钊撰写的一部具有反帝反封建思想的重要著作。本书以马克思列宁主义思想为指导，运用阶级斗争学说，对新民主主义革命初期中国革命所面临的一系列问题作了初步探讨。作者把农民反抗地主、工人反抗资本家、殖民地半殖民地人民反抗帝国主义殖民掠夺的斗争称为平民主义运动，同时又把资产阶级的“平民主义”与无产阶段的“平民主义”明确区别开来，认为无产阶段“平民主义”的基础是工人政治。"),
                new Book(5, "《毛泽东传》", "book5.jpg", "【美】罗斯·特里尔", "美国著名学者兼记者、作家罗斯特里尔的名著《毛泽东传》，被誉为西方数百种毛泽东传中最受推崇、最畅销的作品之一。自登陆中国以来，已经累积畅销近两百万册，在国内社会各界引起了巨大的反响。2010年8月，中国人民大学出版社又隆重推出该书的名著珍藏版，以飨读者。"),
                new Book(6, "《容忍与自由》", "book6.jpg", "胡适", "为纪念胡适先生诞辰120周年，胡适先生所著《容忍与自由：胡适读本》，由台湾胡适纪念馆主任潘光哲先生重新编辑。它不在高深的理论，而在对大众普及胡适先生改造社会的重要思想，《容忍与自由:胡适读本》配以大量珍贵图片、历史背景、延伸阅读等材料，最大限度地还原胡适先生思想精华，以当年文章回应当今时代主题。"),
                new Book(7, "《新青年》", "book7.jpg", "陈独秀", "陈独秀所作，原载于《新青年》创刊号，吹响了反对封建礼教、追求民主与科学号角，并在青年中引起极强烈反响的新文化运动启蒙青年的开山之作——《敬告青年》。胡适所作，原载于《新青年》第二卷第五号，揭开中国现代文学的改革和白话文运动序幕的新文化运动的标志性文章——《文学改良刍议》。"),
                new Book(8, "《周恩来》", "book8.jpg", "【美】迪克·威尔逊", "本书是由国外研究当代中国问题的知名学者迪克·威尔逊撰写的一部关于周恩来生平的传记，问世以来在世界上广为流传，影响甚大。作者自1960年第一次与周恩来见面后，便开始收集该书的写作材料，其中包括周恩来的同事们的广泛回忆及国内外可供查寻的文献资料。在描述周恩来生平的同时，着重分析了他的性格、气质以及他的为人处世和工作作风，对他在政治生涯中所经历的一些重大事件进行了较为深刻的剖析和客观的评价。"),
                new Book(9, "《三民主义》", "book9.jpg", "孙中山", "《民国立国档案:建国方略+三民主义(套装共2册)》主要内容简介：《建国方略》主要由三部分组成:《孙文学说》、《实业计划》、《民权初步》。《孙文学说》从心理建设角度论述“知难行易”的哲学思想。《实业计划》是一份全面快速进行经济建设的宏伟纲领，提出了发展中国经济的远景规划，其中包括建设铁路十万多公里，建设华北、华中、华南三大世界级港口等项目。"),
                new Book(10, "《邓小平传》", "book10.jpg", "【英】理查德·伊文思","西方邓小平研究专家、英国前驻华大使理查德•伊文思（Richard Evans），与邓小平多次面对面接触，三十年心血力作，全方位揭秘鲜为人知的邓小平！20世纪50年代中期，作者来到中国，担任英国驻华代办处的政治参赞。他为邓小平在中共八大上所作的报告所吸引，并对邓小平本人产生了浓厚的兴趣。1984至1988年，他担任英国驻华大使，更加深入地了解了中国和邓小平。"),
        };
        bookList = Arrays.asList(books);




        // 获得全局变量
        ServletContext servletContext = sce.getServletContext();
        // 设置全局变量属性，将用户数据、红色书籍数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
