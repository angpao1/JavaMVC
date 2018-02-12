package dataAccessObject;

import model.Books;

import java.util.List;

public interface BooksDAOInterface {
    List<Books> getAllBooks();
    boolean isAddBook(Books book);
}
