//
//  SettingsScreenViewController.swift
//  noStoryBoard
//
//  Created by user164622 on 2/14/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class SettingsScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        guard let navBar = navigationController?.navigationBar else {
            fatalError("There is no navigation controller.")
        }
        navBar.isHidden = true
        
        let settingsScreen = SettingsScreen(frame: UIScreen.main.bounds)
        
        settingsScreen.table.delegate = self
        settingsScreen.table.dataSource = self
        
        self.view.addSubview(settingsScreen)
    }
}

extension SettingsScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 { // Header
            return 0
        }else if section == 1 { // Conta universitaria
            return 1
        }else if section == 2 { // Minha conta
            return 9
        }else if section == 3 { // Promocoes
            return 3
        }else if section == 4 { // Minhas assinaturas
            return 1
        }else if section == 5 { // Para o meu negocio
            return 3
        }else if section == 6 { // Configuracoes
            return 5
        }else if section == 7 { // Geral
            return 3
        }else { // Sair
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") else {
            fatalError("It was not possible to dequeue a cell with the identifier tableViewCell")
        }
        if indexPath.section == 1 { // Conta universitaria
            cell.textLabel?.text = "Beneficios"
            cell.textLabel?.textColor = UIColor.black
        }else if indexPath.section == 2{ // Minha conta
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Meu PicPay"
                cell.textLabel?.textColor = UIColor.black
            case 1:
                cell.textLabel?.text = "Meu numero"
                cell.textLabel?.textColor = UIColor.black
            case 2:
                cell.textLabel?.text = "Meu e-mail"
                cell.textLabel?.textColor = UIColor.black
            case 3:
                cell.textLabel?.text = "Dados pessoais"
                cell.textLabel?.textColor = UIColor.black
            case 4:
                cell.textLabel?.text = "Conta bancaria"
                cell.textLabel?.textColor = UIColor.black
            case 5:
                cell.textLabel?.text = "Taxas e limites"
                cell.textLabel?.textColor = UIColor.black
            case 6:
                cell.textLabel?.text = "Meus enderecos"
                cell.textLabel?.textColor = UIColor.black
            case 7:
                cell.textLabel?.text = "Validar identidade"
                cell.textLabel?.textColor = UIColor.black
            case 8:
                cell.textLabel?.text = "Upgrade de conta"
                cell.textLabel?.textColor = UIColor.black
            default:
                cell.textLabel?.text = "Olar"
            }
        }else if indexPath.section == 3 { // Promocoes
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Conta universitaria"
                cell.textLabel?.textColor = UIColor.black
            case 1:
                cell.textLabel?.text = "Usar codigo promocional"
                cell.textLabel?.textColor = UIColor.black
            case 2:
                cell.textLabel?.text = "Convide seus amigos"
                cell.textLabel?.textColor = UIColor.black
            default:
                cell.textLabel?.text = "Olar"
            }
        }else if indexPath.section == 4 { // Minhas assinaturas
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Ver minhas assinaturas"
                cell.textLabel?.textColor = UIColor.black
            default:
                cell.textLabel?.text = "Olar"
            }
        }else if indexPath.section == 5 { // Para o meu negocio
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "PicPay PRO"
                cell.textLabel?.textColor = UIColor.black
            case 1:
                cell.textLabel?.text = "Para estabelecimentos"
                cell.textLabel?.textColor = UIColor.black
            case 2:
                cell.textLabel?.text = "Venda por assinatura"
                cell.textLabel?.textColor = UIColor.black
            default:
                cell.textLabel?.text = "Olar"
            }
        }else if indexPath.section == 6 { // Configuracoes
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Usar digital para pagar"
                cell.textLabel?.textColor = UIColor.black
            case 1:
                cell.textLabel?.text = "Alterar senha"
                cell.textLabel?.textColor = UIColor.black
            case 2:
                cell.textLabel?.text = "Privacidade"
                cell.textLabel?.textColor = UIColor.black
            case 3:
                cell.textLabel?.text = "Notificacoes"
                cell.textLabel?.textColor = UIColor.black
            case 4:
                cell.textLabel?.text = "Contas vinculadas"
                cell.textLabel?.textColor = UIColor.black
            default:
                cell.textLabel?.text = "Olar"
            }
        }else if indexPath.section == 7 { // Geral
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Precisa de ajuda?"
                cell.textLabel?.textColor = UIColor.black
            case 1:
                cell.textLabel?.text = "Sobre o PicPay"
                cell.textLabel?.textColor = UIColor.black
            case 2:
                cell.textLabel?.text = "Desativar minha conta"
                cell.textLabel?.textColor = UIColor.black
            default:
                cell.textLabel?.text = "Olar"
            }
        }else if indexPath.section == 8 {
            cell.textLabel?.text = "Sair"
            cell.textLabel?.textColor = UIColor.red
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return tableView.bounds.height/2.0
        }
        return 30
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsHeaderCell") as! SettingsTableHeader
            return header
        }else if section == 1{
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Conta universitaria"
            return header
        }else if section == 2{
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Minha conta"
            return header
        }else if section == 3{
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Promocoes"
            return header
        }else if section == 4 {
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Minhas assinaturas"
            return header
        }else if section == 5 {
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Para o meu negocio"
            return header
        }else if section == 6 {
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Configuracoes"
            return header
        }else if section == 7 {
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "settingsSectionCell") as! SettingsSectionsHeader
            header.sectionLabel.text = "Geral"
            return header
        }else {
            return nil
        }
    }
}
