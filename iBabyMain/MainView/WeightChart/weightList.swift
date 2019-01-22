//
//  weightList.swift
//  iBabyMain
//
//  Created by SSO on 10/01/2019.
//  Copyright © 2019 sso. All rights reserved.
//

import UIKit

class weightList: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // 앱 델리게이트 객체의 참조 정보를 읽어온다.
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var tblList:UITableView!
    var names = [String]()
    var weight = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblList.tableFooterView = UIView.init(frame: .zero) //선안보이게
        tblList.dataSource = self
        tblList.delegate = self
        
    }
    
    // 디바이스 스크린에 뷰 컨트롤러가 나타날 때마다 호출되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        // 테이블 데이터를 다시 읽어들인다. 이에 따라 행을 구성하는 로직이 다시 실행될 것이다.
        self.tblList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = self.appDelegate.weightlist.count
        return count
        // return names.count - 수정
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.appDelegate.weightlist[indexPath.row]
        // 3. 재사용 큐로부터 프로포타입 셀의 인스턴스를 전달받는다.
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! weightCell
        // 5. Date 타입의 날짜를 yyyy-MM-dd HH:mm:ss 포맷에 맞게 변경한다.
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        cell.regdate?.text = formatter.string(from: row.regdate!)
        cell.weightLbl.text = row.title
            //row.title// kg넣고싶음
       
        // 6. cell 객체를 리턴한다.
        return cell
    }
    //cell높이
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    //swipeDeleteButton
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            weight.remove(at: indexPath.row)
            tblList.deleteRows(at: [indexPath], with: .bottom)
        }
    }
    
    //deleteButton
    @objc func deleteRow(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: tblList)
        guard let indexPath = tblList.indexPathForRow(at: point) else {
            return
        }
        names.remove(at: indexPath.row)
        tblList.deleteRows(at: [indexPath], with: .left)
    }
}
