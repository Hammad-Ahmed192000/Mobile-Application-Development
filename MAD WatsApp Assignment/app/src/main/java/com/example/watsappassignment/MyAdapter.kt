package com.example.watsappassignment

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentPagerAdapter

class MyAdapter (fm: FragmentManager) : FragmentPagerAdapter(fm) {
    override fun getCount(): Int {
        return 3;
    }
    override fun getItem(position: Int): Fragment {
        when(position) {
            0 ->  return Chat_datail()
            1 -> return Status_details()
            2 ->  return Call_details()
            else -> return Chat_datail()
        }
    }

    override fun getPageTitle(position: Int): CharSequence? {
        when(position) {
            0 ->  return "CHATS"
            1 ->  return "STATUS"
            2 ->  return "CALLS"
        }
        return super.getPageTitle(position)
    }

}
