using BooksApi.Models;

namespace BooksApi.Services
{
    // For CRUD on books
    public class BookService
    {
        private List<Book> _books;

        public BookService()
        {
            _books = new List<Book>();
        }

        // To Add Book
        public void AddBook(Book book)
        {
            _books.Add(book);
        }

        // To Get All Books
        public List<Book> GetAll()
        {
            return _books;
        }

        // To Get Single Book
        public Book? GetBookById(int id)
        {
            return _books.Find(x => x.Id == id);
        }

        // To Update Book
        public bool UpdateBook(Book book)
        {
            var existing = _books.Find(x => x.Id == book.Id);
            if (existing != null)
            {
                existing.Title = book.Title;
                existing.Description = book.Description;
                existing.Author = book.Author;
                return true;
            }
            return false;
        }

        // To Delete Book
        public bool DeleteBook(int id)
        {
            var book = _books.Find(x => x.Id == id);
            if (book != null)
            {
                _books.Remove(book);
                return true;
            }
            return false;
        }
    }
}
