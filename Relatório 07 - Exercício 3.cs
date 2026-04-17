using System;
using System.Collections.Generic;

class ReliquiaMagica
{
    public string NomeItem;

    public ReliquiaMagica(string nomeItem)
    {
        NomeItem = nomeItem;
    }
}

class BauDeReliquias
{
    private List<ReliquiaMagica> reliquias;

    public BauDeReliquias()
    {
        reliquias = new List<ReliquiaMagica>();
    }

    public void GuardarItem(ReliquiaMagica r)
    {
        reliquias.Add(r);
    }
}

class ItemDeAcampamento
{
    public string NomeItem;

    public ItemDeAcampamento(string nomeItem)
    {
        NomeItem = nomeItem;
    }
}

class Maga
{
    public string Nome;
    public BauDeReliquias Bau;
    public List<ItemDeAcampamento> Kit;

    public Maga(string nome, List<ItemDeAcampamento> kit)
    {
        Nome = nome;
        Bau = new BauDeReliquias(); 
        Kit = kit; 
    }
}

class Program
{
    static void Main()
    {
        List<ItemDeAcampamento> itens = new List<ItemDeAcampamento>();
        itens.Add(new ItemDeAcampamento("Saco de Dormir"));
        itens.Add(new ItemDeAcampamento("Pote de Cozinha"));

        Maga frieren = new Maga("Frieren", itens);

        frieren.Bau.GuardarItem(new ReliquiaMagica("Anel de Prata"));
        frieren.Bau.GuardarItem(new ReliquiaMagica("Grimório Antigo"));

        Console.WriteLine("Itens de acampamento:");
        foreach (ItemDeAcampamento i in frieren.Kit)
        {
            Console.WriteLine(i.NomeItem);
        }
    }
}