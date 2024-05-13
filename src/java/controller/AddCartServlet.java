import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cart;
import model.Item;
import model.Product;
import dal.ProductDAO;

@WebServlet("/addToCart")
public class AddCartServlet extends HttpServlet {
    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        productDAO = new ProductDAO(); // Khởi tạo ProductDAO
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy thông tin sản phẩm từ request
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        // Lấy giỏ hàng từ session
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            request.getSession().setAttribute("cart", cart);
        }
        
        // Tạo một sản phẩm mới và thêm vào giỏ hàng
        Product product = productDAO.getProductByID(productId);
        if (product != null) {
            Item item = new Item(product, quantity);
            cart.addItem(item);
        }
        
        // Chuyển hướng đến trang giỏ hàng
        response.sendRedirect(request.getContextPath() + "cart.jsp");
    }
}
