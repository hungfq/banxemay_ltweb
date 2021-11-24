package com.motor.dao.impl;

import com.motor.dao.IOrderDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.OrderMapper;
import com.motor.mapper.UserMapper;
import com.motor.model.Order;
import com.motor.model.User;

import java.util.List;

public class OrderDAOImpl extends AbstractDAO<Order> implements IOrderDAO {
    @Override
    public List<Order> findAll() {
        String sql = "select * from Orders";
        return query(sql, new OrderMapper());
    }

    @Override
    public List<Order> findAllBySeller(int seller_id) {
        String sql = "select * from Orders where seller_id = ?";
        return query(sql, new OrderMapper(), seller_id);
    }

    @Override
    public Order findOne(int id) {
        String sql = "select * from Orders where id = ?";
        List<Order> order = query(sql, new OrderMapper(), id);
        return order.isEmpty() ? null : order.get(0);
    }

    @Override
    public void updateStatus(Order order) {
        String sql = "UPDATE [dbo].[Orders] SET [status] = ?  WHERE [id] = ?;";
        update(sql, order.getStatus(), order.getId());
    }

    @Override
    public int countBySeller(int seller_id) {
        String sql = "select count(id) from Orders where seller_id = ?";
        return count(sql, seller_id);
    }

    @Override
    public int orderMoneyTotal(int seller_id) {
        String sql = "select sum(a.total) as average\n" +
                "from (\n" +
                "\tselect sum(a.money) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*unit_price as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4 and o.seller_id = ?)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return count(sql, seller_id);
    }

    @Override
    public int orderMoneyAverages(int seller_id) {
        String sql = "select AVG(a.total) as average\n" +
                "from (\n" +
                "\tselect sum(a.money) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*unit_price as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status != 4 and o.seller_id = ?)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return count(sql, seller_id);
    }

    @Override
    public List<User> findUserBySeller(int seller_id) {
        String sql = "select top 7 u.id as id ,\n" +
                "\t'' as username, '' as password,\n" +
                "\tcast(count(o.id) as nvarchar) as mail , \n" +
                "\tcast(sum(b.total)as nvarchar) as phone,\n" +
                "\t0 as role_id, u.fullname as fullname, '' as image\n" +
                "from Users as u, Orders as o,\n" +
                "\t(\n" +
                "\tselect a.id, sum(a.money) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*unit_price as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4 and o.seller_id = ? )\n" +
                "\t\tas a\n" +
                "\tgroup by a.id\n" +
                "\t) as b\n" +
                "where u.id = o.customer_id and b.id=o.id\n" +
                "group by u.id, u.fullname\n" +
                "order by sum(b.total) desc";
        return query(sql, new UserMapper(), seller_id);
    }

    @Override
    public int getRevenueBySellerInMonth(int seller_id, int month, int year) {
        String sql = "select sum(a.total) as total\n" +
                "from (\n" +
                "\tselect sum(a.money) as total\n" +
                "\tfrom\n" +
                "\t\t(select o.id, quantity*unit_price as money\n" +
                "\t\tfrom OrderDetails as od, Orders as o\n" +
                "\t\twhere od.order_id = o.id and o.status!=4\n" +
                "\t\tand o.seller_id= ? and MONTH(o.buy_date) = ? and YEAR(o.buy_date) = ?)\n" +
                "\t\tas a\n" +
                "\tgroup by a.id) as a";
        return count(sql, seller_id, month, year);
    }

}
