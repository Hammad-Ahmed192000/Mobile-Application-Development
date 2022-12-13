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
            0 ->  return Fragment_Chat_detail()
            1 -> return Fragment_Status_detail()
            2 ->  return Fragment_Call_detail()
            else -> return Fragment_Chat_detail()
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
