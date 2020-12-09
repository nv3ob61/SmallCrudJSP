/* 
 * Copyright (C) 2020 mon_mode   0mon.mode@gmail.com
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
package org.monmo.datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.monmo.bean.User;

public class UserDatos {

  public int save(Connection con, User u) throws SQLException {
    int status = 0;
    PreparedStatement ps = null;
    try {
      String sql = "insert into register values(?,?,?,?,?,?)";
      ps = con.prepareStatement(sql);
      ps.setInt(1, u.getId());
      ps.setString(2, u.getName());
      ps.setString(3, u.getPassword());
      ps.setString(4, u.getEmail());
      ps.setString(5, u.getSex());
      ps.setString(6, u.getCountry());
      status = ps.executeUpdate();
    } catch (SQLException e) {
      System.out.println(e);
    } finally {
      if (ps != null) {
        ps.close();
      }
    }
    return status;
  }

  public int update(Connection con, User u) {
    int status = 0;
    try {
      PreparedStatement ps = con.prepareStatement(
              "update register set name=?,password=?,email=?,sex=?,country=? where id=?");
      ps.setString(1, u.getName());
      ps.setString(2, u.getPassword());
      ps.setString(3, u.getEmail());
      ps.setString(4, u.getSex());
      ps.setString(5, u.getCountry());
      ps.setInt(6, u.getId());
      status = ps.executeUpdate();
    } catch (SQLException e) {
      System.out.println(e);
    }
    return status;
  }

  public int delete(Connection con, User u) {
    int status = 0;
    try {
      PreparedStatement ps = con.prepareStatement("delete from register where id=?");
      ps.setInt(1, u.getId());
      status = ps.executeUpdate();
    } catch (SQLException e) {
      System.out.println(e);
    }

    return status;
  }

  public List<User> getAllRecords(Connection con) {
    List<User> list = new ArrayList<>();

    try {
      PreparedStatement ps = con.prepareStatement("select * from register order by id");
      ResultSet rs = ps.executeQuery();
      while (rs.next()) {
        User u = new User();
        u.setId(rs.getInt("id"));
        u.setName(rs.getString("name"));
        u.setPassword(rs.getString("password"));
        u.setEmail(rs.getString("email"));
        u.setSex(rs.getString("sex"));
        u.setCountry(rs.getString("country"));
        list.add(u);
      }
    } catch (SQLException e) {
      System.out.println(e);
    }
    return list;
  }

  public User getRecordById(Connection con, int id) {
    User u = null;
    try {
      PreparedStatement ps = con.prepareStatement("select * from register where id=?");
      ps.setInt(1, id);
      ResultSet rs = ps.executeQuery();
      while (rs.next()) {
        u = new User();
        u.setId(rs.getInt("id"));
        u.setName(rs.getString("name"));
        u.setPassword(rs.getString("password"));
        u.setEmail(rs.getString("email"));
        u.setSex(rs.getString("sex"));
        u.setCountry(rs.getString("country"));
      }
    } catch (SQLException e) {
      System.out.println(e);
    }
    return u;
  }

}
