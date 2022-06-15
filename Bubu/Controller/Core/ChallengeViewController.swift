//
//  ChallengeViewController.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 13/06/22.
//

import UIKit

enum Operation: String{
    
    case sum = "sinalSoma"
    case minus = "sinalMenos"
    case divison = "sinalDivisao"
    case multiplication = "sinalMulti"
    
    var image: UIImage{
        return UIImage(named: self.rawValue) ?? UIImage()
    }
}

enum Number: String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    
    var image: UIImage{
        return UIImage(named: self.rawValue) ?? UIImage()
    }
    
}


struct Enunciado{
    var numberLeft:Number
    var operation:Operation
    var numberRight:Number
    var answer: [Answer]
}

class ChallengeViewController: UIViewController{
    
    private var model: Enunciado? = nil
    lazy var enunciado = EnunciadoView(model: model)
    lazy var answer = AnswerView(answerModel: self.model?.answer)
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    convenience init(model:Enunciado){
        self.init(nibName: nil, bundle: nil)
        self.model = model
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(enunciado)
        view.addSubview(answer)
        NSLayoutConstraint.activate([
            
            answer.topAnchor.constraint(equalTo: enunciado.bottomAnchor),
            answer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            answer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            answer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            enunciado.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            enunciado.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            enunciado.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            answer.heightAnchor.constraint(equalTo: enunciado.heightAnchor, multiplier: 0.9),
            enunciado.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
            ])
    }
}

class ChallengePageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    private var enunciadosModel: [Enunciado] = [
        Enunciado(numberLeft: .one, operation: .sum, numberRight: .eight, answer: [
            Answer(content: .nine, isTrue: true),
            Answer(content: .seven),
            Answer(content: .five)
        ]),
        Enunciado(numberLeft: .one, operation: .sum, numberRight: .eight, answer: [
            Answer(content: .eight, isTrue: true),
            Answer(content: .four),
            Answer(content: .five)
        ]),
        Enunciado(numberLeft: .one, operation: .sum, numberRight: .eight, answer: [
            Answer(content: .one, isTrue: true),
            Answer(content: .six),
            Answer(content: .five)
        ])
    ]
    lazy var enunciadosViewController: [UIViewController] = self.enunciadosModel.map({ enunciado in
        return ChallengeViewController(model: enunciado)
    })
    override init(transitionStyle style: UIPageViewController.TransitionStyle,
                  navigationOrientation: UIPageViewController.NavigationOrientation,
                  options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: style, navigationOrientation: navigationOrientation, options: options)
    }
    convenience init(){
        self.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        self.setViewControllers( [enunciadosViewController[0]], direction: .forward, animated: true, completion: nil)
    }
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return enunciadosViewController[1]
    }
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return enunciadosViewController[2]
    }
}
