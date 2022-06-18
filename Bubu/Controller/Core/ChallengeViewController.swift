//
//  ChallengeViewController.swift
//  Bubu
//
//  Created by João Victor Ipirajá de Alencar on 13/06/22.
//

import UIKit


class ChallengeViewController: UIViewController {

    private var model: Enunciado?
    lazy var enunciado = EnunciadoView(model: model)
    lazy var answer = AnswerView(answerModel: self.model?.answers)

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    convenience init(model: Enunciado) {
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
            answer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            answer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            answer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            enunciado.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            enunciado.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            enunciado.topAnchor.constraint(equalTo: view.topAnchor),
            answer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
            enunciado.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
            ])
    }
}

class ChallengePageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    private lazy var enunciadosModel = LevelModel.EXAMPLE.filter {$0.content == .estrela}.reduce([]) { $0 + $1.enunciados
    }

    lazy var enunciadosViewController: [UIViewController] = self.enunciadosModel.map({ enunciado in
        return ChallengeViewController(model: enunciado)
    })

    override init(transitionStyle style: UIPageViewController.TransitionStyle,
                  navigationOrientation: UIPageViewController.NavigationOrientation,
                  options: [UIPageViewController.OptionsKey: Any]? = nil) {
        super.init(transitionStyle: style, navigationOrientation: navigationOrientation, options: options)
    }
    convenience init() {
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
