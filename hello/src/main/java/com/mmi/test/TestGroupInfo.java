package com.mmi.test;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mmi.entity.GroupInfo;

public class TestGroupInfo {
	private static SessionFactory factory;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			factory = new Configuration().configure().buildSessionFactory();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		// createGroup();
		// getGroupList();
		// getGroupInfo();
		// updateGroupInfo();
		deleteGroup();
	}

	public static void createGroup() {
		Session session = factory.openSession();
		Transaction tx = null;
		Integer groupId = null;
		try {
			tx = session.beginTransaction();
			GroupInfo groupInfo = new GroupInfo();
			groupInfo.setName("mytestinggroup");
			groupInfo.setCreated_by(1);
			groupInfo.setCreated_datetime("");
			groupId = (Integer) session.save(groupInfo);
			System.out.println("inserted group id===>>" + groupId);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();

		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public static void getGroupList() {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			System.out.println("group list");
			tx = session.beginTransaction();
			// List grouplist =
			// session.createQuery("FROM mmi_groupinfo").list();
			// for (Iterator iterator = grouplist.iterator();
			// iterator.hasNext();) {
			// GroupInfo groupInfo = (GroupInfo) iterator.next();
			// System.out.println("groupName==>>"+groupInfo.getName());
			// }

			List<GroupInfo> groupList = session.createQuery("FROM GroupInfo")
					.list();
			for (Iterator iterator = groupList.iterator(); iterator.hasNext();) {
				GroupInfo groupInfo = (GroupInfo) iterator.next();
				System.out.println("groupName==>>" + groupInfo.getName());
			}
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public static void getGroupInfo() {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			GroupInfo groupInfo = (GroupInfo) session.get(GroupInfo.class, 6);
			System.out
					.println("group information====>> " + groupInfo.getName());
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public static void updateGroupInfo() {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			GroupInfo groupInfo = (GroupInfo) session.get(GroupInfo.class, 6);
			System.out.println("groupName===> " + groupInfo.getName());
			groupInfo.setName("mygrouptest");
			session.update(groupInfo);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	public static void deleteGroup() {
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			GroupInfo groupInfo = (GroupInfo) session.get(GroupInfo.class, 10);
			session.delete(groupInfo);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

}
