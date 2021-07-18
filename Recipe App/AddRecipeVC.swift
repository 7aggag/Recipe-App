//
//  ViewController.swift
//  Recipe App
//
//  Created by Haggag on 18/07/2021.
//
import UIKit
class AddRecipeVC: UIViewController {
    ///IBOutlet
    @IBOutlet weak var addrecipe : UITextField!
    @IBOutlet weak var Listofingredients : UITextView!
    @IBOutlet weak var Preparationsteps : UITextView!
    @IBOutlet weak var addrecipebtn : UIButton!
    ///Variables
    var recipename : String = ""
    var Listofingredientstxt : String = ""
    var Preparationstepstxt : String = ""
    var listofrecipes = [recipe]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    ///Functions
    func gettingrecipetitle()->Bool{
        if addrecipe.text != "" {
            recipename = addrecipe.text!
            return true
        }else {
            Alert(title: "Missing information", Message: "recipename is Empty")
            return false
        }}
    func gettingListofingredients()->Bool{
        if Listofingredients.text != "" {
            Listofingredientstxt = Listofingredients.text
            return true
        }else {
            Alert(title: "Missing information", Message: "List of ingredients is Empty")
            return false
        }}
    func gettingPreparationsteps()->Bool{
        if Preparationsteps.text != "" {
            Preparationstepstxt = Preparationsteps.text
            return true
        }else {
            Alert(title: "Missing information", Message: "Preparation Steps is Empty")
            return false
        }}
    @IBAction func pressaddrecipe(_ sender: Any) {
        if gettingrecipetitle() != false && gettingListofingredients() != false && gettingPreparationsteps() != false {
            let recipe = recipe(recipename: recipename, Listofingredients: Listofingredientstxt, Preparationsteps: Preparationstepstxt)
            listofrecipes.append(recipe)
            print(listofrecipes)
            reinter()
        }}
    func Alert(title:String , Message :String ) {
        if presentedViewController == nil {
        let aleart = UIAlertController(title: title, message: Message, preferredStyle: UIAlertController.Style.alert)
        aleart.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(aleart, animated: true, completion: nil)
        }}
    func reinter(){
        Preparationsteps.text = ""
        Preparationstepstxt = ""
        Listofingredients.text = ""
        Listofingredientstxt = ""
        addrecipe.text = ""
        recipename = ""
    }
    }
